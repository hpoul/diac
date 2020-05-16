import 'package:diac_client/src/diac_bloc.dart';
import 'package:diac_client/src/diac_event.dart';
import 'package:diac_client/src/dto/diac_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';
import 'package:url_launcher/url_launcher.dart';

final _logger = Logger('diac_widgets');

/// Displays a in app communication message, if there is one available which
/// has to be displayed.
///
/// If there is no message available, this will render a blank
/// [SizedBox].
class DiacMaterialBanner extends StatefulWidget {
  const DiacMaterialBanner({
    Key key,
    @required this.diac,
    this.label = 'banner',
  })  : assert(diac != null),
        super(key: key);

  final DiacBloc diac;
  final String label;

  @override
  _DiacMaterialBannerState createState() => _DiacMaterialBannerState();
}

class _DiacMaterialBannerState extends State<DiacMaterialBanner> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DiacMessage>(
      stream: widget.diac.messageForLabel(widget.label),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          _logger.warning('error showing diac message.', snapshot.error);
        }
        _logger.finer('snapshot $snapshot');
        if (!snapshot.hasData) {
          return const SizedBox();
        }
        final msg = snapshot.data;

        widget.diac.publishEvent(
          DiacEvent(type: DiacEventType.shown, message: msg),
        );
        final actions = msg.actions.isNotEmpty
            ? msg.actions
            : [const DiacMessageAction(key: 'a', label: 'Dismiss')];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialBanner(
            content: Text(msg.body),
            actions: actions
                .map(
                  (action) => FlatButton(
                    child: Text(action.label),
                    onPressed: () {
                      if (action.url != null) {
                        launch(
                          action.url,
                          forceSafariVC: false,
                          forceWebView: false,
                        );
                      }
                      widget.diac.publishEvent(
                          DiacEventDismissed(message: msg, action: action));
                    },
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}
