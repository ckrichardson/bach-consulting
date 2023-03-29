import 'package:bachio/Widgets/desktopHeader/desktopHeader.dart';
import 'package:bachio/Widgets/wideTiles/HomePageWideTilesList.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
            child: Column(
          children: const [
            DesktopHeader(),
            HomePageWideTilesList(),
          ],
        )));
  }
}
