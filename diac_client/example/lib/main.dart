import 'package:clock/clock.dart';
import 'package:diac_client/diac_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_async_utils/flutter_async_utils.dart';
import 'package:logging/logging.dart';
import 'package:logging_appenders/logging_appenders.dart';
import 'package:uuid/uuid.dart';

final _logger = Logger('diac.main');

void main() {
  Logger.root.level = Level.ALL;
  PrintAppender(formatter: const DefaultLogRecordFormatter())
      .attachToLogger(Logger.root);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with StreamSubscriberMixin {
  DiacBloc diac;

  @override
  void initState() {
    super.initState();
    diac = DiacBloc(
      opts: DiacOpts(
        endpointUrl: '',
        disableConfigFetch: true,
        initialConfig: DiacConfig(
          updatedAt: clock.now().toUtc(),
          messages: [
            DiacMessage(
              uuid: Uuid().v4(),
              body: 'How do you like me?',
              key: 'likeme',
              actions: [
                const DiacMessageAction(
                  key: 'great',
                  label: 'Great',
                ),
                const DiacMessageAction(
                  key: 'bad',
                  label: 'Not at all',
                ),
              ],
            ),
            DiacMessage(
              uuid: Uuid().v4(),
              body: 'That is nice to hear 😍️',
              key: 'message2',
              expression: 'action("likeme") == "great"',
              actions: [
                const DiacMessageAction(
                  key: '5stars',
                  label: 'Give us 5 Stars',
                  url: 'https://authpass.app/',
                ),
                const DiacMessageAction(
                  key: 'dismiss',
                  label: 'Not Now',
                ),
              ],
            ),
            DiacMessage(
              uuid: Uuid().v4(),
              body: 'Too bad :-( How can we do better?️',
              key: 'message2',
              expression: 'action("likeme") == "bad"',
              actions: [],
            ),
          ],
        ),
      ),
    );
    handleSubscription(diac.events.listen((event) {
      _logger.info('Event: $event');
    }));
  }

  @override
  void dispose() {
    super.dispose();
    diac.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: <Widget>[
            DiacMaterialBanner(diac: diac),
            const SizedBox(height: 128),
            const Center(
              child: Text('If there are messages, you see them above.'),
            ),
            const SizedBox(height: 64),
            ElevatedButton(
              child: const Text('Reset'),
              onPressed: () {
                diac.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
