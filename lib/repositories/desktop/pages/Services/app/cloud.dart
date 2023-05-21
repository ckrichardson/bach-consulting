import 'package:bachio/widgets/devicon/devicon.dart';
import 'package:bachio/widgets/devicon/types/deviconTypes.dart';
import 'package:flutter/material.dart';

class Cloud extends StatelessWidget {
  const Cloud({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Row(children: [
      SizedBox(width: screenWidth * .165),
      SizedBox(
        height: 375,
        width: 425,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: const [
              DevIcon(icon: DevIcons.aws),
              DevIcon(icon: DevIcons.azure),
            ],
          ),
        ]),
      ),
      Flexible(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Cloud',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 50)),
              Text(
                'Hosting applications in the cloud allows you to build your services up without compromising on speed or security.   We have experience with many of the large cloud providers used by companies such as Berkshire Hathaway Energy, Conga, and more.',
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          )),
      SizedBox(width: screenWidth * .165),
    ]);
  }
}
