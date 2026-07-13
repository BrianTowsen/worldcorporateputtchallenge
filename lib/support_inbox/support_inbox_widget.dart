import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'support_inbox_model.dart';
export 'support_inbox_model.dart';

class SupportInboxWidget extends StatefulWidget {
  const SupportInboxWidget({super.key});

  static String routeName = 'SupportInbox';
  static String routePath = '/supportInbox';

  @override
  State<SupportInboxWidget> createState() => _SupportInboxWidgetState();
}

class _SupportInboxWidgetState extends State<SupportInboxWidget> {
  late SupportInboxModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SupportInboxModel());
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
          child: custom_widgets.SupportInboxView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
