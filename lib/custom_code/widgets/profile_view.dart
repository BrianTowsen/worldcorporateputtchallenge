// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:go_router/go_router.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key, this.width, this.height});
  final double? width;
  final double? height;

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
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

  Widget _sectionHeader(String num, String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0, bottom: 12.0),
      child: Row(
        children: [
          Text(num,
              style:
                  _inter(9.0, color: muted, weight: FontWeight.w500, ls: 1.4)),
          const SizedBox(width: 8.0),
          Text(title, style: _inter(9.0, weight: FontWeight.w700, ls: 1.8)),
        ],
      ),
    );
  }

  Widget _statCard(String label, String value,
      {Color valueColor = Colors.white}) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration:
          BoxDecoration(color: card, borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style:
                  _inter(8.5, color: muted, weight: FontWeight.w600, ls: 1.6)),
          const SizedBox(height: 10.0),
          Text(value, style: _saira(34.0, color: valueColor, ls: 0)),
        ],
      ),
    );
  }

  Widget _bagRow(String label, String value, {bool last = false}) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
                color: last ? Colors.transparent : line, width: 1.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label,
              style:
                  _inter(9.0, color: muted, weight: FontWeight.w500, ls: 1.8)),
          const SizedBox(height: 6.0),
          Text(value,
              style: _inter(16.0, weight: FontWeight.w600)
                  .copyWith(fontFamily: 'Inter Tight')),
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
            const SizedBox(height: 16.0),
            Row(
              children: [
                Container(
                  width: 72.0,
                  height: 72.0,
                  alignment: Alignment.center,
                  decoration:
                      BoxDecoration(color: card, shape: BoxShape.circle),
                  child: Text('MB', style: _saira(26.0, color: cyan, ls: 0)),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('WCGC MEMBER',
                          style: _inter(9.0,
                              color: cyan, weight: FontWeight.w600, ls: 1.8)),
                      const SizedBox(height: 8.0),
                      Text('MARCUS BELL', style: _saira(30.0)),
                      const SizedBox(height: 6.0),
                      Text('🇺🇸 UNITED STATES · MERIDIAN CAPITAL',
                          style: _inter(9.5, color: muted, ls: 1.2)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            GestureDetector(
              onTap: () => context.pushNamed('EditProfile'),
              child: Container(
                padding: const EdgeInsets.fromLTRB(16.0, 14.0, 12.0, 14.0),
                decoration: BoxDecoration(
                    color: card, borderRadius: BorderRadius.circular(8.0)),
                child: Row(
                  children: [
                    Expanded(
                        child: Text('Edit profile',
                            style: _inter(14.0, weight: FontWeight.w600))),
                    const Icon(Icons.edit, color: Colors.white, size: 16.0),
                  ],
                ),
              ),
            ),
            _sectionHeader('01', 'CAREER'),
            Row(
              children: [
                Expanded(child: _statCard('RANKING', '14.6')),
                const SizedBox(width: 10.0),
                Expanded(
                    child: _statCard('BEST ROUND', '−8', valueColor: cyan)),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Expanded(child: _statCard('CHALLENGES', '7')),
                const SizedBox(width: 10.0),
                Expanded(child: _statCard('AVG SCORE', '−6.3')),
              ],
            ),
            _sectionHeader('02', 'IN THE BAG'),
            Container(
              decoration: BoxDecoration(
                  color: card, borderRadius: BorderRadius.circular(12.0)),
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: [
                  _bagRow('PUTTER', 'Scotty Cameron · Newport 2'),
                  _bagRow('BALL', 'Titleist · Pro V1', last: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
