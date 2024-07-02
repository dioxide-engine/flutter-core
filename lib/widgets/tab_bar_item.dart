import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarItem extends StatefulWidget {
  final String name;

  const TabBarItem({super.key, required this.name});
  @override
  State<StatefulWidget> createState() => TabBarItemState();
}

class TabBarItemState extends State<TabBarItem> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: MouseRegion(
        child: Text(
          widget.name,
          style: GoogleFonts.varelaRound(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: isHover ? Colors.white : null,
          ),
        ),
        onEnter: (_) {
          setState(() {
            isHover = true;
          });
        },
        onExit: (_) {
          setState(() {
            isHover = false;
          });
        },
      ),
    );
  }
}
