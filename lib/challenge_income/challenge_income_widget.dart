import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'challenge_income_model.dart';
export 'challenge_income_model.dart';

class ChallengeIncomeWidget extends StatefulWidget {
  const ChallengeIncomeWidget({super.key});

  static String routeName = 'ChallengeIncome';
  static String routePath = '/challengeIncome';

  @override
  State<ChallengeIncomeWidget> createState() => _ChallengeIncomeWidgetState();
}

class _ChallengeIncomeWidgetState extends State<ChallengeIncomeWidget> {
  late ChallengeIncomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChallengeIncomeModel());
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
          child: custom_widgets.ChallengeIncomeView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
