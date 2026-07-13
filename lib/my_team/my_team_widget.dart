import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'my_team_model.dart';
export 'my_team_model.dart';

class MyTeamWidget extends StatefulWidget {
  const MyTeamWidget({super.key});

  static String routeName = 'MyTeam';
  static String routePath = '/myTeam';

  @override
  State<MyTeamWidget> createState() => _MyTeamWidgetState();
}

class _MyTeamWidgetState extends State<MyTeamWidget> {
  late MyTeamModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyTeamModel());
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
          child: custom_widgets.MyTeamView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
