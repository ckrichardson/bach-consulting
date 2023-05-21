import 'package:bachio/infrastructure/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../widgets/wideTiles/wideTile.dart';

class SoftwareDoneRight extends StatelessWidget {
  const SoftwareDoneRight({Key? key});

  final Offset _textOffset = const Offset(0, -20);
  final double fontSize = 120;
  final FontWeight fontWeight = FontWeight.bold;
  final Color textColor = Colors.black;
  final Color transparent = Colors.transparent;
  final BoxDecoration boxDecoration = const BoxDecoration(
    color: Colors.white,
  );

  @override
  Widget build(BuildContext context) {
    final TextStyle stdTextStyle = GoogleFonts.libreFranklin(
        fontSize: fontSize,
        fontWeight: fontWeight,
        textStyle: TextStyle(
            color: transparent,
            shadows: [Shadow(color: textColor, offset: _textOffset)]));
    final child = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Padding(padding: EdgeInsets.only(top: 90)),
        Text.rich(TextSpan(
          text: 'Software Done Right',
          style: stdTextStyle,
        )),
        OutlinedButton(
            onPressed: () => {Navigator.pushNamed(context, Routes.services)},
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(200, 50),
              side: const BorderSide(
                style: BorderStyle.solid,
                color: Colors.black,
                width: 2.0,
              ),
              shape: const StadiumBorder(),
            ),
            child: const Text(
              'Learn More',
              style: TextStyle(fontSize: 25, color: Colors.black),
            ))
      ],
    );

    return WideTile(boxDecoration: boxDecoration, child: child);
  }
}
