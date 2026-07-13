import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'message_support_user_model.dart';
export 'message_support_user_model.dart';

class MessageSupportUserWidget extends StatefulWidget {
  const MessageSupportUserWidget({super.key});

  static String routeName = 'MessageSupportUser';
  static String routePath = '/messageSupportUser';

  @override
  State<MessageSupportUserWidget> createState() =>
      _MessageSupportUserWidgetState();
}

class _MessageSupportUserWidgetState extends State<MessageSupportUserWidget> {
  late MessageSupportUserModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MessageSupportUserModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: custom_widgets.MessageSupportUserView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
