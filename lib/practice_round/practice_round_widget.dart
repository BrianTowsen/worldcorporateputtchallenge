import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'practice_round_model.dart';
export 'practice_round_model.dart';

class PracticeRoundWidget extends StatefulWidget {
  const PracticeRoundWidget({super.key});

  static String routeName = 'PracticeRound';
  static String routePath = '/practiceRound';

  @override
  State<PracticeRoundWidget> createState() => _PracticeRoundWidgetState();
}

class _PracticeRoundWidgetState extends State<PracticeRoundWidget> {
  late PracticeRoundModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PracticeRoundModel());
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
          child: custom_widgets.PracticeRoundView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
