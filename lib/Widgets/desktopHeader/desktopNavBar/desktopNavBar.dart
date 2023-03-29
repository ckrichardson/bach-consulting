import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'desktopNavBarItem/desktopNavBarItem.dart';

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({Key? key}) : super(key: key);

  static const List<String> navBarTitles = ["HOME", "SERVICES", "ABOUT"];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 90, right: 150),
        child: SizedBox(
            child: Row(
          children: [
            for (var title in DesktopNavBar.navBarTitles)
              DesktopNavBarItem(title: title)
          ],
        )));
  }
}
