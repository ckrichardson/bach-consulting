import 'package:bachio/repositories/desktop/pages/Home/app/SoftwareDoneRight.dart';
import 'package:bachio/repositories/desktop/pages/Services/app/backend.dart';
import 'package:bachio/repositories/desktop/pages/Services/app/cloud.dart';
import 'package:bachio/repositories/desktop/pages/Services/app/frontend.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesContent extends StatelessWidget {
  const ServicesContent({Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        addAutomaticKeepAlives: false,
        children: const [
          Padding(padding: EdgeInsets.only(top: 100)),
          Frontend(),
          Backend(),
          Cloud(),
        ]);
  }
}
