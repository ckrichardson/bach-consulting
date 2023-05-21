import 'package:bachio/widgets/footer/footer.dart';
import 'package:bachio/widgets/header/header.dart';
import 'package:bachio/repositories/desktop/pages/Home/infrastructure/HomePageContent.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const Header(),
      body: SingleChildScrollView(
          child: Column(
        children: const [
          HomePageContent(),
        ],
      )),
      bottomNavigationBar:
          Container(height: 75, color: Colors.white, child: const Footer()),
    );
  }
}
