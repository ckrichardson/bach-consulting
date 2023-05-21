import 'package:bachio/infrastructure/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../widgets/wideTiles/wideTile.dart';

class WeHateBadSoftware extends StatelessWidget {
  const WeHateBadSoftware({Key? key});

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
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(top: 100),
      ),
      Text('We Hate Bad Software',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 75)),
      Text('...and you should too.',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
      Padding(
        padding: EdgeInsets.only(top: 150),
      ),
      SizedBox(
          width: 800,
          child: Column(
            children: const [
              Text(
                  'Poorly written software can be a nightmare to work with.   It\'s clunky, ugly, and probably doesn\'t perform well.   In fact, it\'s such a hassle that in 2020 poorly written software cost the US 2.08 TRILLION dollars. Our goal is to contribute to your technology needs and guarantee that bad software is something you will never have to worry about.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 25,
                    height: 2,
                  )),
              // Text(
              //     'Our goal is to contribute to your technology needs and guarantee that bad software is something you will never have to worry about.',
              //     textAlign: TextAlign.justify,
              //     style: TextStyle(fontSize: 25, height: 2))
            ],
          ))
    ]);
  }
}
