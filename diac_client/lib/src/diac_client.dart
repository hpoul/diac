import 'dart:convert';
import 'dart:io';

import 'package:clock/clock.dart';
import 'package:diac_client/src/dto/diac_dto.dart';
import 'package:diac_client/src/dto/diac_store.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:logging/logging.dart';
import 'package:package_info/package_info.dart';
import 'package:simple_json_persistence/simple_json_persistence.dart';
import 'package:uuid/uuid.dart';

final _logger = Logger('diac.diac_client');

class DiacPackageInfo {
  const DiacPackageInfo({
    @required this.appName,
    @required this.packageName,
    @required this.version,
    @required this.buildNumber,
  })  : assert(appName != null),
        assert(packageName != null),
        assert(version != null),
        assert(buildNumber != null);

  DiacPackageInfo.fromPackageInfo(PackageInfo pi)
      : this(
          appName: pi.appName,
          packageName: pi.packageName,
          version: pi.version,
          buildNumber: pi.buildNumber,
        );

  final String appName;
  final String packageName;
  final String version;
  final String buildNumber;
}

class DiacOpts {
  ///
  /// [initialConfig]: initial config used before first http request,
  /// or if config fetching is disabled.
  DiacOpts({
    @required this.endpointUrl,
    DiacConfig initialConfig,
    this.disableConfigFetch = false,
    this.refetchInterval = const Duration(hours: 1),
    this.refetchIntervalCold = const Duration(hours: 1),
    this.httpClient = createClient,
    this.packageInfo,
  })  : assert(endpointUrl != null),
        assert(disableConfigFetch != null),
        assert(refetchInterval != null),
        assert(httpClient != null),
        assert(!endpointUrl.endsWith('/')),
        initialConfig = initialConfig ??
            DiacConfig(
              updatedAt: DateTime.fromMicrosecondsSinceEpoch(0).toUtc(),
              messages: [],
            );

  /// base path to the API endpoint.
  /// Must not end in '/'
  final String endpointUrl;
  final DiacConfig initialConfig;

  /// Do not fetch configuration. This can be useful if you want to allow
  /// users to opt out of in app communications.
  final bool disableConfigFetch;

  /// How often the config should be reloaded from the server.
  /// While running. For the interval after a (restart) check
  /// [refetchIntervalCold].
  final Duration refetchInterval;

  /// How much time must have passed before fetching after a start of the app.
  final Duration refetchIntervalCold;

  /// PackageInfo used to identify the current app/version.
  /// If not defined flutter plugin `package_info` will be used.
  final Future<DiacPackageInfo> Function() packageInfo;

  final Client Function() httpClient;

  static Client createClient() => Client();

  Future<DiacPackageInfo> getPackageInfo() async {
    if (packageInfo != null) {
      return await packageInfo();
    }
    if (kIsWeb) {
      return const DiacPackageInfo(
        packageName: 'design.codeux.diac.web',
        appName: 'Diac',
        version: '1.0.0',
        buildNumber: '0',
      );
    }
    return DiacPackageInfo.fromPackageInfo(await PackageInfo.fromPlatform());
  }
}

String _operatingSystem() => kIsWeb ? 'web' : Platform.operatingSystem;

class DiacApi {
  DiacApi({
    @required this.opts,
    @required this.packageInfo,
    this.headers,
  })  : assert(opts != null),
        assert(packageInfo != null);

  final DiacOpts opts;
  final DiacPackageInfo packageInfo;
  final Map<String, String> headers;

  Client _client;
  Uri _endpointUri;

  Future<Uri> _uri(List<String> path,
      {Map<String, String> queryParameters}) async {
    _endpointUri ??= Uri.parse(opts.endpointUrl);
    return _endpointUri.replace(
        pathSegments: _endpointUri.pathSegments + path,
        queryParameters: queryParameters);
  }

  Map<String, String> _toQueryParameters(DiacPackageInfo packageInfo) {
    return <String, String>{
      'package': packageInfo.packageName,
      'platform': _operatingSystem(),
    };
  }

  String _toUserAgent(DiacPackageInfo packageInfo) {
    return 'diac (${_operatingSystem()}, '
        '${packageInfo.packageName}'
        '@${packageInfo.version}+${packageInfo.buildNumber})';
  }

  Future<DiacConfig> fetchConfig() async {
    final uri = await _uri(['messages.json'],
        queryParameters: _toQueryParameters(packageInfo));
    try {
      _client ??= opts.httpClient();
      _logger.finest('loading $uri with $_client');
      final response = await _client.post(uri, headers: {
        'User-Agent': _toUserAgent(packageInfo),
        ...?headers,
      });
      final type = response.statusCode ~/ 100;
      final body = utf8.decode(response.bodyBytes);
      if (type != 2) {
        _logger.fine('Error while loading diac config. ${response.statusCode}'
            ' - $body');
        return null;
      }
      _logger.finest('Got response ${response.statusCode},'
          ' ${body.length}');
      return DiacConfig.fromJson(
        json.decode(body) as Map<String, dynamic>,
      );
    } catch (e, stackTrace) {
      _logger.warning(
          'Error while fetching configuration from $uri', e, stackTrace);
      rethrow;
    }
  }
}

class DiacClient {
  DiacClient({this.opts})
      : store = SimpleJsonPersistence.getForTypeSync(
          (data) => DiacData.fromJson(data),
          defaultCreator: () => DiacData(
            deviceId: Uuid().v4(),
            firstLaunch: clock.now().toUtc(),
            seen: [],
            lastConfig: opts.initialConfig,
            lastConfigFetchedAt: DateTime.fromMicrosecondsSinceEpoch(0).toUtc(),
          ),
        ) {
    var coldStart = true;
    store.onValueChangedAndLoad.listen((event) async {
      _logger.finer('got data event $event');
      final interval =
          coldStart ? opts.refetchIntervalCold : opts.refetchInterval;
      coldStart = false;
      if (event.lastConfig == null || event.lastConfigFetchedAt == null) {
        _logger.fine('Never fetched configure before, reloading');
        await reloadConfigFromServer();
      } else if (event.lastConfigFetchedAt.difference(clock.now()).abs() >
          interval) {
        coldStart = false;
        _logger.fine('config fetched > ${opts.refetchInterval} ago. reload.');
        await reloadConfigFromServer();
      } else if (opts.initialConfig != null &&
          opts.initialConfig.updatedAt.isAfter(event.lastConfig.updatedAt)) {
        await _updateConfig(opts.initialConfig);
      }
    });
  }

  @visibleForTesting
  DiacApi api;

  DiacOpts opts;

  final SimpleJsonPersistence<DiacData> store;

  Future<DiacConfig> _fetchConfig() async {
    if (opts.disableConfigFetch) {
      _logger.finer('iac message fetching disabled.');
      return opts.initialConfig;
    }
    final data = await store.load();
    api ??= DiacApi(
      opts: opts,
      packageInfo: await opts.getPackageInfo(),
      headers: {
        'X-Device': data.deviceId,
      },
    );
    return await api.fetchConfig();
  }

  Future<void> _reloadConfigFromServerFuture;

  Future<void> reloadConfigFromServer() {
    return _reloadConfigFromServerFuture ??= _reloadConfigFromServerNow()
        .whenComplete(() => _reloadConfigFromServerFuture = null);
  }

  Future<void> _reloadConfigFromServerNow() async {
    final config = await _fetchConfig();
    if (config == null) {
      return;
    }
    await _updateConfig(config);
  }

  Future<void> _updateConfig(DiacConfig config) async {
    await store.update((data) => data.copyWith(
          deviceId: data.deviceId ?? Uuid().v4(),
          lastConfig: config,
          lastConfigFetchedAt: clock.now().toUtc(),
        ));
  }
}
