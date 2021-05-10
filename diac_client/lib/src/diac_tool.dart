import 'dart:convert';
import 'dart:io';

import 'package:clock/clock.dart';
import 'package:diac_client/src/dto/diac_dto.dart';
import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';

final _logger = Logger('diac.diac_tool');

const jsonEncoder = JsonEncoder.withIndent('  ');

class DiacTool {
  DiacTool._() {
    Logger.root.level = Level.ALL;
    PrintAppender().attachToLogger(Logger.root);
  }

  static final _instance = DiacTool._();
  static DiacTool get instance => _instance;

  /// syncs the given messages into the given file.
  /// If the file does not yet exist, a new file will be created.
  ///
  /// It will take the given [messages] and replace the uuids with the uuids
  /// found in the [file] matched based on the [DiacMessage.key].
  Future<void> syncMessageConfig(File file, List<DiacMessage> messages) async {
    try {
      final config = await _readConfig(file) ??
          DiacConfig(updatedAt: clock.now().toUtc(), messages: []);
      final newMessages = messages
          .map((msg) => msg.copyWith(
              uuid: config.messages
                  .firstWhere((element) => element.key == msg.key,
                      orElse: () => msg)
                  .uuid))
          .toList();
      final DiacConfig? newConfig = config.copyWith(
        updatedAt: clock.now().toUtc(),
        messages: newMessages,
      );
      await file.parent.create(recursive: true);
      await file.writeAsString(jsonEncoder.convert(newConfig));
      _logger.info('Written to ${file.path}. ✅️');
    } catch (error, stackTrace) {
      _logger.severe('Error while syncing messages.', error, stackTrace);
    }
  }

  Future<DiacConfig?> _readConfig(File file) async {
    if (!file.existsSync()) {
      return null;
    }
    return DiacConfig.fromJson(
        json.decode(await file.readAsString()) as Map<String, dynamic>);
  }
}
