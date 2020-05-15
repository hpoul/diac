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
  DiacClient(this.endpointUrl) {
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
  final String endpointUrl;
  final store = SimpleJsonPersistence.getForTypeSync(
      (data) => DiacData.fromJson(data),
      defaultCreator: () =>
          DiacData(firstLaunch: clock.now().toUtc(), seen: []));

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
    final uri = _uri(['messages.json']);
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
