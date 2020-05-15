import 'dart:convert';
import 'dart:io';

import 'package:clock/clock.dart';
import 'package:diac_client/src/dto/diac_dto.dart';
import 'package:diac_client/src/dto/diac_store.dart';
import 'package:http/http.dart';
import 'package:logging/logging.dart';
import 'package:package_info/package_info.dart';
import 'package:simple_json_persistence/simple_json_persistence.dart';

final _logger = Logger('diac_client');

class DiacClient {
  ///
  /// [initialConfig]: initial config used before first http request,
  /// or if config fetching is disabled.
  DiacClient(
    this.endpointUrl, {
    DiacConfig initialConfig,
    this.disableConfigFetch = false,
  }) : store = SimpleJsonPersistence.getForTypeSync(
          (data) => DiacData.fromJson(data),
          defaultCreator: () => DiacData(
            firstLaunch: clock.now().toUtc(),
            seen: [],
            lastConfig: initialConfig,
            lastConfigFetchedAt: DateTime.fromMicrosecondsSinceEpoch(0).toUtc(),
          ),
        ) {
    store.onValueChanged.listen((event) async {
      if (event.lastConfig == null || event.lastConfigFetchedAt == null) {
        _logger.fine('Never fetched configure before, reloading');
        await reloadConfigFromServer();
      } else if (event.lastConfigFetchedAt
              .difference(clock.now())
              .abs()
              .inHours >
          1) {
        _logger.fine('config fetched >1 hour ago. reload.');
        await reloadConfigFromServer();
      }
    });
  }

  Client _client;

  /// Do not fetch configuration. This can be useful if you want to allow
  /// users to opt out of in app communications.
  bool disableConfigFetch;

  final String endpointUrl;
  final SimpleJsonPersistence<DiacData> store;

  Future<Uri> _uri(List<String> path,
      {Map<String, String> queryParameters}) async {
    final endpoint = Uri.parse(endpointUrl);
    final packageInfo = await PackageInfo.fromPlatform();
    return endpoint.replace(
        pathSegments: endpoint.pathSegments + path,
        queryParameters: <String, String>{
          'package': packageInfo.packageName,
          'platform': Platform.operatingSystem,
          ...?queryParameters,
        });
  }

  Future<DiacConfig> _fetchConfig() async {
    if (disableConfigFetch) {
      _logger.finer('iac message fetching disabled.');
      return null;
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
    await store.update((data) => data.copyWith(
          lastConfig: config,
          lastConfigFetchedAt: clock.now().toUtc(),
        ));
  }
}
