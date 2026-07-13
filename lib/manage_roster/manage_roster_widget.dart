import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'manage_roster_model.dart';
export 'manage_roster_model.dart';

class ManageRosterWidget extends StatefulWidget {
  const ManageRosterWidget({super.key});

  static String routeName = 'ManageRoster';
  static String routePath = '/manageRoster';

  @override
  State<ManageRosterWidget> createState() => _ManageRosterWidgetState();
}

class _ManageRosterWidgetState extends State<ManageRosterWidget> {
  late ManageRosterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManageRosterModel());
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
          child: custom_widgets.ManageRosterView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
