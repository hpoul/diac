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

final _logger = Logger('diac_client');

class DiacOpts {
  ///
  /// [initialConfig]: initial config used before first http request,
  /// or if config fetching is disabled.
  DiacOpts({
    @required this.endpointUrl,
    this.initialConfig,
    this.disableConfigFetch = false,
    this.refetchInterval = const Duration(hours: 1),
    this.refetchIntervalCold = const Duration(hours: 1),
  })  : assert(endpointUrl != null),
        assert(disableConfigFetch != null),
        assert(refetchInterval != null);
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
}

class DiacClient {
  DiacClient({this.opts})
      : store = SimpleJsonPersistence.getForTypeSync(
          (data) => DiacData.fromJson(data),
          defaultCreator: () => DiacData(
            firstLaunch: clock.now().toUtc(),
            seen: [],
            lastConfig: opts.initialConfig,
            lastConfigFetchedAt: DateTime.fromMicrosecondsSinceEpoch(0).toUtc(),
          ),
        ) {
    var coldStart = true;
    store.onValueChangedAndLoad.listen((event) async {
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

  Client _client;

  DiacOpts opts;

  final SimpleJsonPersistence<DiacData> store;

  Future<Uri> _uri(List<String> path,
      {Map<String, String> queryParameters}) async {
    final endpoint = Uri.parse(opts.endpointUrl);
    final packageInfo = await getPackageInfo();
    return endpoint.replace(
        pathSegments: endpoint.pathSegments + path,
        queryParameters: <String, String>{
          'package': packageInfo.packageName,
          'platform': Platform.operatingSystem,
          ...?queryParameters,
        });
  }

  Future<DiacConfig> _fetchConfig() async {
    if (opts.disableConfigFetch) {
      _logger.finer('iac message fetching disabled.');
      return opts.initialConfig;
    }
    final uri = _uri(['messages.json']);
    try {
      _client ??= Client();
      final response = await _client.get(uri);
      final type = response.statusCode ~/ 100;
      if (type != 2) {
        _logger.fine('Error while loading diac config. ${response.statusCode}'
            ' - ${response.body}');
        return null;
      }
      return DiacConfig.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      );
    } catch (e, stackTrace) {
      _logger.warning(
          'Error while fetching configuration from $uri', e, stackTrace);
      rethrow;
    }
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
          lastConfig: config,
          lastConfigFetchedAt: clock.now().toUtc(),
        ));
  }

  static Future<PackageInfo> getPackageInfo() async {
    if (kIsWeb) {
      return PackageInfo(
        packageName: 'design.codeux.diac.web',
        appName: 'Diac',
        version: '1.0.0',
        buildNumber: '0',
      );
    }
    return await PackageInfo.fromPlatform();
  }
}
