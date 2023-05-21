import 'package:bachio/repositories/desktop/pages/Services/infrastructure/servicesContent.dart';
import 'package:bachio/widgets/footer/footer.dart';
import 'package:bachio/widgets/header/header.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const Header(),
      body: SingleChildScrollView(
          child: Column(
        children: const [ServicesContent()],
      )),
      bottomNavigationBar:
          Container(height: 75, color: Colors.white, child: const Footer()),
    );
  }
}
