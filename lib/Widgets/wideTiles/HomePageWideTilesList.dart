import 'package:bachio/Widgets/wideTiles/HomePageWideTileOne.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWideTilesList extends StatelessWidget {
  const HomePageWideTilesList({Key? key});

  @override
  Widget build(BuildContext context) {
    Size screenSizeObj = MediaQuery.of(context).size;
    double screenWidth = screenSizeObj.width;
    double screenHeight = screenSizeObj.height;

    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      addAutomaticKeepAlives: false,
      children: [
        const HomePageWideTileOne(),
        Row(
          children: [
            Container(
              height: screenHeight * .7,
              width: screenWidth,
              color: Colors.blueGrey,
              child: const Text('henlo'),
            ),
          ],
        ),
      ],
    );
  }
}
