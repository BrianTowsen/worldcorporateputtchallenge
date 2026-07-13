import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'event_leaderboard_admin_model.dart';
export 'event_leaderboard_admin_model.dart';

class EventLeaderboardAdminWidget extends StatefulWidget {
  const EventLeaderboardAdminWidget({super.key});

  static String routeName = 'EventLeaderboardAdmin';
  static String routePath = '/eventLeaderboardAdmin';

  @override
  State<EventLeaderboardAdminWidget> createState() =>
      _EventLeaderboardAdminWidgetState();
}

class _EventLeaderboardAdminWidgetState
    extends State<EventLeaderboardAdminWidget> {
  late EventLeaderboardAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventLeaderboardAdminModel());
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
          child: custom_widgets.EventLeaderboardAdminView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
