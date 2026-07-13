import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'event_round_model.dart';
export 'event_round_model.dart';

class EventRoundWidget extends StatefulWidget {
  const EventRoundWidget({super.key});

  static String routeName = 'EventRound';
  static String routePath = '/eventRound';

  @override
  State<EventRoundWidget> createState() => _EventRoundWidgetState();
}

class _EventRoundWidgetState extends State<EventRoundWidget> {
  late EventRoundModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventRoundModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: custom_widgets.EventRoundView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
