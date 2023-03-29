import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopNavBarItem extends StatelessWidget {
  const DesktopNavBarItem({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
        padding: const EdgeInsets.only(left: 50),
        child: IntrinsicHeight(
            child: TextButton(
          onPressed: () => {},
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent)),
          child: Text(
            title,
            style: GoogleFonts.vollkorn(fontSize: 25, color: Colors.white),
          ),
        )));
  }
}
