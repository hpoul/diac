import 'dart:io';

import 'package:diac_client/diac_tool.dart';
import 'package:uuid/uuid.dart';

Future<void> main() async {
  final uuid = Uuid();
  await DiacTool.instance.syncMessageConfig(
    File('messages.json'),
    [
      DiacMessage(
        uuid: uuid.v4(),
        body: 'Example message ;-)',
        key: 'example1',
        actions: [],
      ),
    ],
  );
}
