import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'impact_model.dart';
export 'impact_model.dart';

class ImpactWidget extends StatefulWidget {
  const ImpactWidget({super.key});

  static String routeName = 'Impact';
  static String routePath = '/impact';

  @override
  State<ImpactWidget> createState() => _ImpactWidgetState();
}

class _ImpactWidgetState extends State<ImpactWidget> {
  late ImpactModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImpactModel());
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
          child: custom_widgets.ImpactView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
