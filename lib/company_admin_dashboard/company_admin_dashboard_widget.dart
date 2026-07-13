import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'company_admin_dashboard_model.dart';
export 'company_admin_dashboard_model.dart';

class CompanyAdminDashboardWidget extends StatefulWidget {
  const CompanyAdminDashboardWidget({super.key});

  static String routeName = 'CompanyAdminDashboard';
  static String routePath = '/companyAdminDashboard';

  @override
  State<CompanyAdminDashboardWidget> createState() =>
      _CompanyAdminDashboardWidgetState();
}

class _CompanyAdminDashboardWidgetState
    extends State<CompanyAdminDashboardWidget> {
  late CompanyAdminDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompanyAdminDashboardModel());
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
          child: custom_widgets.CompanyAdminDasboardView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
