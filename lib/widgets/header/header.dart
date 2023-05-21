import 'package:bachio/config/config.dart';
import 'package:bachio/infrastructure/routes/routes.dart';
import 'package:bachio/repositories/desktop/pages/Home/home.dart';
import 'package:bachio/widgets/header/headerLink/headerLink.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderLinkTitles {
  static const String home = 'HOME';
  static const String services = 'SERVICES';
  static const String about = 'ABOUT';
}

class Header extends StatelessWidget implements PreferredSizeWidget {
  const Header({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final leftPadding = screenWidth >= 600 ? 400.0 : 20.0;

    return PreferredSize(
      preferredSize: const Size.fromHeight(50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.home);
                      },
                      style: ButtonStyle(overlayColor:
                          MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          return Colors.transparent;
                        },
                      )),
                      child: const Text(
                        Config.companyName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 36,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Row(children: [
                  HeaderLink(
                      title: HeaderLinkTitles.home,
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.home);
                      }),
                  HeaderLink(
                      title: HeaderLinkTitles.about,
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.about);
                      }),
                  HeaderLink(
                      title: HeaderLinkTitles.services,
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.services);
                      })
                ]),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(75);
}
