// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:go_router/go_router.dart';

class MyTeamView extends StatefulWidget {
  const MyTeamView({super.key, this.width, this.height});
  final double? width;
  final double? height;

  @override
  State<MyTeamView> createState() => _MyTeamViewState();
}

class _MyTeamViewState extends State<MyTeamView> {
  // WCGC palette
  static const Color navy = Color(0xFF051C2C);
  static const Color card = Color(0xFF0B2A3D);
  static const Color cardAlt = Color(0xFF0E344A);
  static const Color line = Color(0xFF16374B);
  static const Color cyan = Color(0xFF14C0FF);
  static const Color gold = Color(0xFFFAD743);
  static const Color muted = Color(0xFF7F9DB0);

  TextStyle _saira(double size,
          {Color color = Colors.white, double ls = 0.5}) =>
      TextStyle(
        fontFamily: 'Saira Condensed',
        fontWeight: FontWeight.w800,
        fontSize: size,
        color: color,
        letterSpacing: ls,
        height: 0.95,
      );

  TextStyle _inter(double size,
          {Color color = Colors.white,
          FontWeight weight = FontWeight.w400,
          double ls = 0.0}) =>
      TextStyle(
        fontFamily: 'Inter',
        fontWeight: weight,
        fontSize: size,
        color: color,
        letterSpacing: ls,
      );

  Widget _sectionHeader(String num, String title, {String? trailing}) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, bottom: 12.0),
      child: Row(
        children: [
          Text(num,
              style:
                  _inter(9.0, color: muted, weight: FontWeight.w500, ls: 1.4)),
          const SizedBox(width: 8.0),
          Expanded(
              child: Text(title,
                  style: _inter(9.0, weight: FontWeight.w700, ls: 1.8))),
          if (trailing != null)
            Text(trailing,
                style: _inter(9.0,
                    color: muted, weight: FontWeight.w500, ls: 1.2)),
        ],
      ),
    );
  }

  Widget _companyStat(String label, String value,
      {Color valueColor = Colors.white}) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style:
                  _inter(8.0, color: muted, weight: FontWeight.w600, ls: 1.6)),
          const SizedBox(height: 6.0),
          Text(value, style: _saira(30.0, color: valueColor, ls: 0)),
        ],
      ),
    );
  }

  Widget _rosterRow({
    required String initials,
    required Color avBg,
    required Color avFg,
    required String name,
    String? role,
    Color roleColor = muted,
    required String score,
    bool you = false,
    bool last = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 11.0),
      decoration: BoxDecoration(
        color: you ? cardAlt : Colors.transparent,
        border: Border(
            bottom: BorderSide(
                color: last ? Colors.transparent : line, width: 1.0)),
      ),
      child: Row(
        children: [
          Container(
            width: 28.0,
            height: 28.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: avBg, shape: BoxShape.circle),
            child: Text(initials, style: _saira(12.0, color: avFg, ls: 0)),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: _inter(13.0, weight: FontWeight.w600)
                        .copyWith(fontFamily: 'Inter Tight')),
                if (role != null)
                  Text(role, style: _inter(8.0, color: roleColor, ls: 1.2)),
              ],
            ),
          ),
          Text(score, style: _saira(18.0, color: cyan, ls: 0)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height,
      color: navy,
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 110.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8.0),
            // company header card
            Container(
              padding: const EdgeInsets.all(18.0),
              decoration: BoxDecoration(
                  color: card, borderRadius: BorderRadius.circular(14.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 48.0,
                        height: 48.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: cyan,
                            borderRadius: BorderRadius.circular(10.0)),
                        child:
                            Text('M', style: _saira(24.0, color: navy, ls: 0)),
                      ),
                      const SizedBox(width: 12.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('MERIDIAN CAPITAL',
                              style: _saira(24.0, ls: 0.5)),
                          const SizedBox(height: 4.0),
                          Text('🇬🇧 24 PLAYERS',
                              style: _inter(9.0, color: muted, ls: 1.4)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 18.0),
                  Row(
                    children: [
                      _companyStat('WORLD RANK', '01', valueColor: gold),
                      _companyStat('AGGREGATE', '−312'),
                      _companyStat('OFFICES', '6'),
                    ],
                  ),
                ],
              ),
            ),

            _sectionHeader('01', 'YOUR CONTRIBUTION'),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  color: card, borderRadius: BorderRadius.circular(12.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("YOU'RE MERIDIAN'S #3 SCORER",
                      style: _inter(8.5,
                          color: cyan, weight: FontWeight.w600, ls: 1.6)),
                  const SizedBox(height: 12.0),
                  Row(
                    children: [
                      _companyStat('BEST', '−8'),
                      _companyStat('ROUNDS', '5'),
                      _companyStat('BEST 3', '−22', valueColor: cyan),
                    ],
                  ),
                ],
              ),
            ),

            _sectionHeader('02', 'TEAM ROSTER', trailing: 'TOP 4'),
            Container(
              decoration: BoxDecoration(
                  color: card, borderRadius: BorderRadius.circular(12.0)),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  _rosterRow(
                      initials: 'MR',
                      avBg: cyan,
                      avFg: navy,
                      name: 'Marco Reyes',
                      role: 'CAPTAIN',
                      roleColor: gold,
                      score: '−26'),
                  _rosterRow(
                      initials: 'DW',
                      avBg: line,
                      avFg: Colors.white,
                      name: 'Dana Whitfield',
                      score: '−24'),
                  _rosterRow(
                      initials: 'MB',
                      avBg: cyan,
                      avFg: navy,
                      name: 'Marcus Bell',
                      role: 'YOU',
                      roleColor: cyan,
                      score: '−22',
                      you: true),
                  _rosterRow(
                      initials: 'RM',
                      avBg: line,
                      avFg: Colors.white,
                      name: 'Ravi Menon',
                      score: '−19',
                      last: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
