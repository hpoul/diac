import 'dart:async';
import 'dart:io';

import 'package:diac_client/diac_client.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';

final _logger = Logger('diac_client_test');

void main() {
  Logger.root.level = Level.ALL;
  PrintAppender().attachToLogger(Logger.root);

  setUpAll(() async {
    await TestUtil.mockPathProvider();
  });

  Future<void> _wait() async =>
      await Future<void>.delayed(const Duration(milliseconds: 100));

  Future<StreamSubscription<void>> _subscribe(DiacBloc diac) async {
    return diac.messageForLabel('test').listen((event) {
      _logger.finer('Got messages $event');
    });
  }

  group('basic client test', () {
    test('Read stuff', () async {
      final diac = DiacBloc(
        opts: DiacOpts(endpointUrl: '', disableConfigFetch: true),
      );
      {
        final subscription = await _subscribe(diac);
        await _wait();
        await subscription.cancel();
        await _wait();
      }
      {
        final subscription = await _subscribe(diac);
        await _wait();
        await subscription.cancel();
        await _wait();
      }
    });
  });
}

class TestUtil {
  static Future<void> mockPathProvider() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    // Create a temporary directory.
    final directory = await Directory.systemTemp.createTemp('flutter_tmp');

    // Mock out the MethodChannel for the path_provider plugin.
    const MethodChannel('plugins.flutter.io/path_provider')
        .setMockMethodCallHandler((MethodCall methodCall) async {
      // If you're getting the apps documents directory, return the path to the
      // temp directory on the test environment instead.
      if (methodCall.method == 'getApplicationDocumentsDirectory') {
        _logger.info('Using app directory $directory');
        return directory.path;
      }
      return null;
    });
  }
}
