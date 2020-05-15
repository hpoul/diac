import 'dart:convert';
import 'dart:io';

import 'package:clock/clock.dart';
import 'package:diac_client/src/dto/diac_dto.dart';
import 'package:uuid/uuid.dart';

Future<void> main() async {
  final uuid = Uuid();
  final config = DiacConfig(
    updatedAt: clock.now().toUtc(),
    messages: [
      DiacMessage(
        uuid: uuid.v4(),
        body: 'Example message ;-)',
        key: 'example1',
        actions: [],
      ),
    ],
  );
  await File('messages.json').writeAsString(json.encode(config));
}
