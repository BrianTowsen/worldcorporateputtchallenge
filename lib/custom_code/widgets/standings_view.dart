// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:go_router/go_router.dart';

class StandingsView extends StatefulWidget {
  const StandingsView({super.key, this.width, this.height});
  final double? width;
  final double? height;

  @override
  State<StandingsView> createState() => _StandingsViewState();
}

class _StandingsViewState extends State<StandingsView> {
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

  int _tab = 0; // 0 = Companies, 1 = Players, 2 = Offices

  Widget _tabBtn(String label, int index) {
    final bool sel = _tab == index;
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => _tab = index),
        behavior: HitTestBehavior.opaque,
        child: Container(
          height: 38.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: sel ? cyan : Colors.transparent,
                width: 2.0,
              ),
            ),
          ),
          child: Text(label,
              style: _inter(13.0,
                  color: sel ? Colors.white : muted,
                  weight: sel ? FontWeight.w700 : FontWeight.w500)),
        ),
      ),
    );
  }

  Widget _row({
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
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: leader ? card : Colors.transparent,
        borderRadius: leader
            ? const BorderRadius.horizontal(right: Radius.circular(8.0))
            : null,
        border: Border(
          bottom:
              BorderSide(color: leader ? Colors.transparent : card, width: 1.0),
          left: leader
              ? const BorderSide(color: gold, width: 3.0)
              : BorderSide.none,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 26.0,
            height: 24.0,
            alignment: Alignment.center,
            decoration: leader
                ? BoxDecoration(
                    color: gold, borderRadius: BorderRadius.circular(5.0))
                : null,
            child: Text(pos,
                style: _saira(14.0, color: leader ? navy : muted, ls: 0)),
          ),
          const SizedBox(width: 10.0),
          Container(
            width: 32.0,
            height: 32.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: markBg, borderRadius: BorderRadius.circular(6.0)),
            child: Text(mark, style: _saira(15.0, color: markFg, ls: 0)),
          ),
          const SizedBox(width: 10.0),
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

  List<Widget> _rows() {
    if (_tab == 1) {
      // Players
      return [
        _row(
            pos: '1',
            mark: 'MR',
            markBg: cyan,
            markFg: navy,
            name: 'Marco Reyes',
            meta: 'MERIDIAN CAPITAL · 🇬🇧',
            score: '−26',
            leader: true),
        _row(
            pos: '2',
            mark: 'AT',
            markBg: line,
            markFg: Colors.white,
            name: 'Ai Tanaka',
            meta: 'APEX HEALTH · 🇯🇵',
            score: '−25',
            leader: false),
        _row(
            pos: '3',
            mark: 'LO',
            markBg: line,
            markFg: Colors.white,
            name: "Liam O'Connor",
            meta: 'NORTHWIND · 🇮🇪',
            score: '−25',
            leader: false),
        _row(
            pos: '4',
            mark: 'SA',
            markBg: line,
            markFg: Colors.white,
            name: 'Sofia Andersson',
            meta: 'STERLING · 🇸🇪',
            score: '−24',
            leader: false),
      ];
    } else if (_tab == 2) {
      // Offices
      return [
        _row(
            pos: '1',
            mark: 'LN',
            markBg: cyan,
            markFg: navy,
            name: 'Meridian — London',
            meta: 'MERIDIAN CAPITAL · 12',
            score: '−168',
            leader: true),
        _row(
            pos: '2',
            mark: 'TK',
            markBg: line,
            markFg: Colors.white,
            name: 'Apex — Tokyo',
            meta: 'APEX HEALTH · 14',
            score: '−154',
            leader: false),
        _row(
            pos: '3',
            mark: 'NY',
            markBg: line,
            markFg: Colors.white,
            name: 'Northwind — New York',
            meta: 'NORTHWIND · 9',
            score: '−141',
            leader: false),
        _row(
            pos: '4',
            mark: 'ST',
            markBg: line,
            markFg: Colors.white,
            name: 'Sterling — Stockholm',
            meta: 'STERLING · 11',
            score: '−133',
            leader: false),
      ];
    }
    // Companies
    return [
      _row(
          pos: '1',
          mark: 'M',
          markBg: cyan,
          markFg: navy,
          name: 'Meridian Capital',
          meta: '🇬🇧 UNITED KINGDOM · 24',
          score: '−312',
          leader: true),
      _row(
          pos: '2',
          mark: 'A',
          markBg: const Color(0xFF0E7C7B),
          markFg: Colors.white,
          name: 'Apex Health',
          meta: '🇯🇵 JAPAN · 31',
          score: '−298',
          leader: false),
      _row(
          pos: '3',
          mark: 'N',
          markBg: const Color(0xFF1B5E3F),
          markFg: Colors.white,
          name: 'Northwind Logistics',
          meta: '🇺🇸 UNITED STATES · 19',
          score: '−276',
          leader: false),
      _row(
          pos: '4',
          mark: 'S',
          markBg: const Color(0xFFB08D3A),
          markFg: Colors.white,
          name: 'Sterling Partners',
          meta: '🇸🇪 SWEDEN · 22',
          score: '−265',
          leader: false),
      _row(
          pos: '5',
          mark: 'V',
          markBg: const Color(0xFFA6337A),
          markFg: Colors.white,
          name: 'Vantage Media',
          meta: '🇮🇹 ITALY · 17',
          score: '−251',
          leader: false),
    ];
  }

  String get _colHead =>
      _tab == 0 ? 'COMPANY' : (_tab == 1 ? 'PLAYER' : 'OFFICE');

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
            Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      Container(width: 18.0, height: 3.0, color: gold),
                      const SizedBox(width: 8.0),
                      Text('MARCH CHALLENGE · LIVE',
                          style: _inter(9.0,
                              color: gold, weight: FontWeight.w700, ls: 2.2)),
                    ],
                  ),
                  const SizedBox(height: 12.0),
                  Text('STANDINGS', style: _saira(40.0)),
                  const SizedBox(height: 8.0),
                  Text(
                      "Companies ranked by their best players' aggregate. Rank as an individual and by office too.",
                      style: _inter(12.5, color: muted).copyWith(height: 1.5)),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Container(
                decoration: const BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: line, width: 1.0))),
                child: Row(
                  children: [
                    _tabBtn('Companies', 0),
                    _tabBtn('Players', 1),
                    _tabBtn('Offices', 2),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
              child: SizedBox(
                height: 34.0,
                child: Row(
                  children: [
                    SizedBox(
                        width: 30.0,
                        child: Text('POS',
                            style: _inter(8.0,
                                color: muted,
                                weight: FontWeight.w600,
                                ls: 1.6))),
                    const SizedBox(width: 8.0),
                    Expanded(
                        child: Text(_colHead,
                            style: _inter(8.0,
                                color: muted,
                                weight: FontWeight.w600,
                                ls: 1.6))),
                    Text('BEST 4',
                        style: _inter(8.0,
                            color: muted, weight: FontWeight.w600, ls: 1.6)),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(children: _rows()),
            ),
          ],
        ),
      ),
    );
  }
}
