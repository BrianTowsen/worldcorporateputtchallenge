import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'message_support_model.dart';
export 'message_support_model.dart';

class MessageSupportWidget extends StatefulWidget {
  const MessageSupportWidget({super.key});

  static String routeName = 'MessageSupport';
  static String routePath = '/messageSupport';

  @override
  State<MessageSupportWidget> createState() => _MessageSupportWidgetState();
}

class _MessageSupportWidgetState extends State<MessageSupportWidget> {
  late MessageSupportModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessageSupportModel());
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
          child: custom_widgets.MessageSupportView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
