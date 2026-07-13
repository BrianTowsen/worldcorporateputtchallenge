import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'standings_model.dart';
export 'standings_model.dart';

class StandingsWidget extends StatefulWidget {
  const StandingsWidget({super.key});

  static String routeName = 'Standings';
  static String routePath = '/standings';

  @override
  State<StandingsWidget> createState() => _StandingsWidgetState();
}

class _StandingsWidgetState extends State<StandingsWidget> {
  late StandingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StandingsModel());
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
          child: custom_widgets.StandingsView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
