import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'invite_players_model.dart';
export 'invite_players_model.dart';

class InvitePlayersWidget extends StatefulWidget {
  const InvitePlayersWidget({super.key});

  static String routeName = 'InvitePlayers';
  static String routePath = '/invitePlayers';

  @override
  State<InvitePlayersWidget> createState() => _InvitePlayersWidgetState();
}

class _InvitePlayersWidgetState extends State<InvitePlayersWidget> {
  late InvitePlayersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InvitePlayersModel());
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
          child: custom_widgets.InvitePlayersView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
