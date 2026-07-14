// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:go_router/go_router.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({
    super.key,
    this.width,
    this.height,
    this.currentTab = 0,
  });

  final double? width;
  final double? height;

  /// Active tab index: 0 = Home, 1 = Standings, 2 = Team, 3 = You
  final int currentTab;

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  static const Color _navy = Color(0xFF04161F);
  static const Color _border = Color(0xFF16374B);
  static const Color _active = Color(0xFF14C0FF);
  static const Color _inactive = Color(0xFF7F9DB0);

  void _go(int index, String routeName) {
    if (index == widget.currentTab) return;
    context.goNamed(routeName);
  }

  Widget _tab(int index, IconData icon, String label, String routeName) {
    final bool selected = widget.currentTab == index;
    final Color c = selected ? _active : _inactive;
    return Expanded(
      child: InkWell(
        onTap: () => _go(index, routeName),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: c, size: 24.0),
            const SizedBox(height: 4.0),
            Text(
              label,
              style: TextStyle(
                fontFamily: 'Inter',
                color: c,
                fontSize: 9.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double bottomInset = MediaQuery.of(context).padding.bottom;
    return Container(
      width: widget.width ?? double.infinity,
      padding: EdgeInsets.only(bottom: bottomInset),
      decoration: const BoxDecoration(
        color: _navy,
        border: Border(top: BorderSide(color: _border, width: 1.0)),
      ),
      child: SizedBox(
        height: 74.0,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            Row(
              children: [
                _tab(0, Icons.home, 'HOME', 'Home'),
                _tab(1, Icons.leaderboard, 'STANDINGS', 'Standings'),
                const Expanded(child: SizedBox()), // gap for center button
                _tab(2, Icons.groups, 'TEAM', 'MyTeam'),
                _tab(3, Icons.person, 'YOU', 'Profile'),
              ],
            ),
            Positioned(
              top: -20.0,
              child: GestureDetector(
                onTap: () =>
                    context.pushNamed('EventList'), // the live challenge
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 58.0,
                      height: 58.0,
                      decoration: BoxDecoration(
                        color: _active,
                        shape: BoxShape.circle,
                        border: Border.all(color: _navy, width: 4.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x5514C0FF),
                            blurRadius: 16.0,
                            offset: Offset(0.0, 4.0),
                          ),
                        ],
                      ),
                      child: const Icon(Icons.sports_golf,
                          color: Color(0xFF051C2C), size: 28.0),
                    ),
                    const SizedBox(height: 2.0),
                    const Text(
                      'PLAY',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        color: _active,
                        fontSize: 9.0,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
