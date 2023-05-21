import 'package:bachio/widgets/devicon/types/deviconTypes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const double iconSize = 70;

class DevIcon extends StatelessWidget {
  final DevIconType icon;

  const DevIcon({Key? key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
          right: 30,
        ),
        child: SizedBox(
            width: 100,
            height: 110,
            child: Column(children: [
              SvgPicture.asset(
                  height: iconSize,
                  width: iconSize,
                  '$deviconBaseRoute${icon.path}'),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  icon.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17.5),
                ),
              )
            ])));
  }
}
