import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'enter_event_model.dart';
export 'enter_event_model.dart';

class EnterEventWidget extends StatefulWidget {
  const EnterEventWidget({super.key});

  static String routeName = 'EnterEvent';
  static String routePath = '/enterEvent';

  @override
  State<EnterEventWidget> createState() => _EnterEventWidgetState();
}

class _EnterEventWidgetState extends State<EnterEventWidget> {
  late EnterEventModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnterEventModel());
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
          child: custom_widgets.EnterEventView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
