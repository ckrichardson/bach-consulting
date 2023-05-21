import 'package:bachio/config/config.dart';
import 'package:bachio/repositories/desktop/pages/About/about.dart';
import 'package:bachio/repositories/desktop/pages/Home/home.dart';
import 'package:bachio/infrastructure/routes/routes.dart';
import 'package:bachio/repositories/desktop/pages/Services/services.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const BachConsulting());
}

class BachConsulting extends StatelessWidget {
  const BachConsulting({Key? key}) : super(key: key);

  Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return buildPageRoute(const Home());
      case Routes.about:
        return buildPageRoute(const About());
      case Routes.services:
        return buildPageRoute(const Services());
      default:
        return null;
    }
  }

  PageRoute<dynamic> buildPageRoute(Widget page,
      {RouteTransitionsBuilder? transitionsBuilder}) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: transitionsBuilder ?? defaultTransitionsBuilder,
    );
  }

  Widget defaultTransitionsBuilder(
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    return child; // Return child directly for no transitions
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(child,
          background: Container(color: const Color.fromARGB(255, 0, 0, 0))),
      title: Config.companyName,
      initialRoute: '/',
      onGenerateRoute: generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}
