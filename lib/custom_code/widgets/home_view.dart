// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:go_router/go_router.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
    this.width,
    this.height,
    this.challengeLabel = 'MARCH CHALLENGE · LIVE',
    this.countries = '36',
    this.companies = '1,842',
    this.raised = '\$1.2M',
  });

  final double? width;
  final double? height;
  final String challengeLabel;
  final String countries;
  final String companies;
  final String raised;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // WCGC palette
  static const Color navy = Color(0xFF051C2C);
  static const Color card = Color(0xFF0B2A3D);
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

  Widget _statCell(String value, String label,
      {Color valueColor = Colors.white}) {
    return Expanded(
      child: Column(
        children: [
          Text(value, style: _saira(26.0, color: valueColor)),
          const SizedBox(height: 4.0),
          Text(label,
              style:
                  _inter(8.0, color: muted, weight: FontWeight.w600, ls: 1.2)),
        ],
      ),
    );
  }

  Widget _divider() => Container(width: 1.0, height: 34.0, color: line);

  Widget _standRow({
    required String pos,
    required String mark,
    required Color markBg,
    required Color markFg,
    required String name,
    required String meta,
    required String score,
    required bool leader,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 13.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: line, width: 1.0),
          left: leader
              ? const BorderSide(color: gold, width: 3.0)
              : BorderSide.none,
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 20.0,
            child: Text(pos,
                style: _saira(16.0, color: leader ? gold : muted, ls: 0)),
          ),
          const SizedBox(width: 6.0),
          Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
                color: markBg, borderRadius: BorderRadius.circular(6.0)),
            alignment: Alignment.center,
            child: Text(mark, style: _saira(15.0, color: markFg, ls: 0)),
          ),
          const SizedBox(width: 11.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: _inter(14.0, weight: FontWeight.w600)
                        .copyWith(fontFamily: 'Inter Tight')),
                const SizedBox(height: 2.0),
                Text(meta, style: _inter(8.5, color: muted, ls: 1.0)),
              ],
            ),
          ),
          Text(score, style: _saira(leader ? 22.0 : 19.0, color: cyan, ls: 0)),
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
        padding: const EdgeInsets.only(bottom: 110.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo lockup
            Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 14.0, 24.0, 0.0),
              child: Row(
                children: [
                  Icon(Icons.golf_course, color: Colors.white, size: 30.0),
                  const SizedBox(width: 11.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('WORLD CORPORATE GOLF CHALLENGE',
                          style: _saira(11.0, ls: 0.5)),
                      const SizedBox(height: 2.0),
                      Text('PUTTING CHALLENGE',
                          style: _saira(9.0, color: cyan, ls: 2.0)),
                    ],
                  ),
                ],
              ),
            ),

            // Hero
            Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 26.0, 24.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(width: 18.0, height: 3.0, color: gold),
                      const SizedBox(width: 8.0),
                      Text(widget.challengeLabel,
                          style: _inter(9.0,
                              color: gold, weight: FontWeight.w700, ls: 2.2)),
                    ],
                  ),
                  const SizedBox(height: 14.0),
                  Text('PUTT FOR YOUR\nCOMPANY —\nFROM ANYWHERE.',
                      style: _saira(46.0)),
                  const SizedBox(height: 14.0),
                  SizedBox(
                    width: 300.0,
                    child: Text(
                      'Nine putts, wherever you are. One score for you, your company and your office.',
                      style: _inter(13.5, color: muted).copyWith(height: 1.5),
                    ),
                  ),
                  const SizedBox(height: 18.0),
                  // Play CTA
                  GestureDetector(
                    onTap: () => context.pushNamed('EventList'),
                    child: Container(
                      padding:
                          const EdgeInsets.fromLTRB(18.0, 12.0, 12.0, 12.0),
                      decoration: BoxDecoration(
                          color: cyan,
                          borderRadius: BorderRadius.circular(8.0)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Play this month\'s round',
                              style: _inter(14.0,
                                  color: navy, weight: FontWeight.w700)),
                          const SizedBox(width: 12.0),
                          Container(
                            width: 22.0,
                            height: 22.0,
                            decoration: BoxDecoration(
                                color: navy,
                                borderRadius: BorderRadius.circular(5.0)),
                            child: const Icon(Icons.arrow_forward,
                                color: cyan, size: 14.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Stat strip
            Container(
              margin: const EdgeInsets.fromLTRB(20.0, 24.0, 20.0, 0.0),
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
              decoration: BoxDecoration(
                  color: card, borderRadius: BorderRadius.circular(14.0)),
              child: Row(
                children: [
                  _statCell(widget.countries, 'COUNTRIES'),
                  _divider(),
                  _statCell(widget.companies, 'COMPANIES'),
                  _divider(),
                  _statCell(widget.raised, 'RAISED', valueColor: gold),
                ],
              ),
            ),

            // Global standings
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 22.0, 20.0, 0.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Text('GLOBAL STANDINGS',
                              style: _inter(10.0,
                                  weight: FontWeight.w700, ls: 1.8))),
                      GestureDetector(
                        onTap: () => context.goNamed('Standings'),
                        child: Text('VIEW ALL',
                            style: _inter(10.0,
                                color: cyan, weight: FontWeight.w600, ls: 1.0)),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12.0),
                  Container(
                    decoration: BoxDecoration(
                        color: card, borderRadius: BorderRadius.circular(12.0)),
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      children: [
                        _standRow(
                            pos: '1',
                            mark: 'M',
                            markBg: cyan,
                            markFg: navy,
                            name: 'Meridian Capital',
                            meta: '🇬🇧 UNITED KINGDOM · 24',
                            score: '−312',
                            leader: true),
                        _standRow(
                            pos: '2',
                            mark: 'A',
                            markBg: line,
                            markFg: Colors.white,
                            name: 'Apex Health',
                            meta: '🇯🇵 JAPAN · 31',
                            score: '−298',
                            leader: false),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
