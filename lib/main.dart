import 'package:bachio/desktop/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import './desktop/pages/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(child,
          // maxWidth: 1400,
          // minWidth: 480,
          // defaultScale: true,
          // breakpoints: [
          //   const ResponsiveBreakpoint.resize(480, name: MOBILE),
          //   const ResponsiveBreakpoint.resize(800, name: TABLET),
          //   const ResponsiveBreakpoint.resize(1000,
          //       name: DESKTOP, scaleFactor: 1),
          // ],
          background: Container(color: Color.fromARGB(255, 0, 0, 0))),
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'My home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  void _onPressed() {}

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
