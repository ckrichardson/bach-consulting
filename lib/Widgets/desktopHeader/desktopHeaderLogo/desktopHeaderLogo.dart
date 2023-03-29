import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopHeaderLogo extends StatelessWidget {
  const DesktopHeaderLogo({Key? key});

  static const String businessName = "BACH CONSULTING";

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 45, top: 15),
            child: SvgPicture.asset(
              'images/bach_seal_white.svg',
              height: 100,
              fit: BoxFit.cover,
            )),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 5),
          child: Text(
            businessName,
            style: GoogleFonts.vollkorn(color: Colors.white),
          ),
        )
      ],
    );
  }
}
