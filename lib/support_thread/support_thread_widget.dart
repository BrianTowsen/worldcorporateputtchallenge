import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'support_thread_model.dart';
export 'support_thread_model.dart';

class SupportThreadWidget extends StatefulWidget {
  const SupportThreadWidget({super.key});

  static String routeName = 'SupportThread';
  static String routePath = '/supportThread';

  @override
  State<SupportThreadWidget> createState() => _SupportThreadWidgetState();
}

class _SupportThreadWidgetState extends State<SupportThreadWidget> {
  late SupportThreadModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SupportThreadModel());
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
          child: custom_widgets.SupportThreadView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
