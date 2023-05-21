import 'package:bachio/repositories/desktop/pages/Home/app/SoftwareDoneRight.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        addAutomaticKeepAlives: false,
        children: const [
          SoftwareDoneRight(),
        ]);
  }
}
