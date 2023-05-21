import 'package:bachio/widgets/devicon/devicon.dart';
import 'package:bachio/widgets/devicon/types/deviconTypes.dart';
import 'package:flutter/material.dart';

class Frontend extends StatelessWidget {
  const Frontend({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Row(children: [
      SizedBox(width: screenWidth * .165),
      SizedBox(
        height: 400,
        width: 425,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: const [
              DevIcon(icon: DevIcons.typescript),
              DevIcon(icon: DevIcons.javascript),
              DevIcon(icon: DevIcons.dart),
            ],
          ),
          Row(
            children: const [
              DevIcon(icon: DevIcons.angular),
              DevIcon(icon: DevIcons.react),
              DevIcon(icon: DevIcons.flutter),
            ],
          ),
          Row(
            children: const [
              DevIcon(icon: DevIcons.ionic),
              DevIcon(icon: DevIcons.html),
              DevIcon(icon: DevIcons.css),
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
                'Front End',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 50)),
              Text(
                'We have experience with the latest front-end technologies with a fast, responsive feel that you can\'t miss out on.   Through our well-recognized development practices, we will work to remove pain points between you and your customers just as we have done for our family and friends.   A beautiful website is in your hands.   All you have to do is give us a call.',
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
