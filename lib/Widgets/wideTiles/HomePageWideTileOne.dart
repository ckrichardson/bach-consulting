import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './wideTile.dart';

class HomePageWideTileOne extends StatelessWidget {
  const HomePageWideTileOne({Key? key});

  final Offset _textOffset = const Offset(0, -20);
  final double fontSize = 100;
  final FontWeight fontWeight = FontWeight.bold;
  final Color textColor = Colors.white;
  final Color transparent = Colors.transparent;
  final BoxDecoration boxDecoration = const BoxDecoration(
    color: Colors.white,
    image: DecorationImage(
      image: AssetImage('assets/images/homepage_tile_one.jpg'),
      fit: BoxFit.fill,
    ),
  );

  @override
  Widget build(BuildContext context) {
    final TextStyle stdTextStyle = GoogleFonts.libreFranklin(
        fontSize: fontSize,
        fontWeight: fontWeight,
        textStyle: TextStyle(
            color: transparent,
            shadows: [Shadow(color: textColor, offset: _textOffset)]));
    final TextStyle underlinedTextStyle = GoogleFonts.libreFranklin(
        fontSize: fontSize,
        fontWeight: fontWeight,
        textStyle: TextStyle(
            decoration: TextDecoration.underline,
            decorationColor: Colors.white,
            decorationThickness: 2,
            color: transparent,
            shadows: [Shadow(color: textColor, offset: _textOffset)]));
    final child = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(TextSpan(
            text: 'Software Done ',
            style: stdTextStyle,
            children: <TextSpan>[
              TextSpan(
                  text: 'Right',
                  style: GoogleFonts.libreFranklin(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      textStyle: underlinedTextStyle))
            ])),
        OutlinedButton(
            onPressed: () => null,
            style: OutlinedButton.styleFrom(
              fixedSize: Size(200, 50),
              side: const BorderSide(
                style: BorderStyle.solid,
                color: Colors.white,
                width: 2.0,
              ),
              shape: const StadiumBorder(),
            ),
            child: const Text(
              'Learn More',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ))
      ],
    );

    return WideTile(boxDecoration: boxDecoration, child: child);
  }
}
