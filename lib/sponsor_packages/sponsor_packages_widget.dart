import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'sponsor_packages_model.dart';
export 'sponsor_packages_model.dart';

class SponsorPackagesWidget extends StatefulWidget {
  const SponsorPackagesWidget({super.key});

  static String routeName = 'SponsorPackages';
  static String routePath = '/sponsorPackages';

  @override
  State<SponsorPackagesWidget> createState() => _SponsorPackagesWidgetState();
}

class _SponsorPackagesWidgetState extends State<SponsorPackagesWidget> {
  late SponsorPackagesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SponsorPackagesModel());
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
          child: custom_widgets.SponsorPackagesView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
