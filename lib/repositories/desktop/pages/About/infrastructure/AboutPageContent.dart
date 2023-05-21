import 'package:bachio/repositories/desktop/pages/About/app/WeHateBadSoftware.dart';
import 'package:flutter/material.dart';

class AboutPageContent extends StatelessWidget {
  const AboutPageContent({Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        addAutomaticKeepAlives: false,
        children: const [
          WeHateBadSoftware(),
        ]);
  }
}
