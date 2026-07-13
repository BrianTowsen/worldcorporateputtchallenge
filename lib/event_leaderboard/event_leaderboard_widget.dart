import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'event_leaderboard_model.dart';
export 'event_leaderboard_model.dart';

class EventLeaderboardWidget extends StatefulWidget {
  const EventLeaderboardWidget({super.key});

  static String routeName = 'EventLeaderboard';
  static String routePath = '/eventLeaderboard';

  @override
  State<EventLeaderboardWidget> createState() => _EventLeaderboardWidgetState();
}

class _EventLeaderboardWidgetState extends State<EventLeaderboardWidget> {
  late EventLeaderboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventLeaderboardModel());
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
          child: custom_widgets.EventLeaderboardView(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
