import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'company_standings_detail_model.dart';
export 'company_standings_detail_model.dart';

class CompanyStandingsDetailWidget extends StatefulWidget {
  const CompanyStandingsDetailWidget({super.key});

  static String routeName = 'CompanyStandingsDetail';
  static String routePath = '/companyStandingsDetail';

  @override
  State<CompanyStandingsDetailWidget> createState() =>
      _CompanyStandingsDetailWidgetState();
}

class _CompanyStandingsDetailWidgetState
    extends State<CompanyStandingsDetailWidget> {
  late CompanyStandingsDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompanyStandingsDetailModel());
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
          child: custom_widgets.CompanyStandingsDetailView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
