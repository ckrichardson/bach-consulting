import 'package:bachio/widgets/devicon/devicon.dart';
import 'package:bachio/widgets/devicon/types/deviconTypes.dart';
import 'package:flutter/material.dart';

class Backend extends StatelessWidget {
  const Backend({Key? key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Row(children: [
      SizedBox(width: screenWidth * .165),
      Flexible(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Back End',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 50)),
              Text(
                'A great backend can turn a mediocre and unimpressive service into a superior and highly rated one.  With our use of patterns such as Domain Driven Design and caching we will make your backend a lot easier to work with and blazingly fast.',
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          )),
      const SizedBox(
        width: 100,
      ),
      SizedBox(
        height: 400,
        width: 425,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: const [
              DevIcon(icon: DevIcons.nodejs),
              DevIcon(icon: DevIcons.go),
              DevIcon(icon: DevIcons.python),
            ],
          ),
        ]),
      ),
      SizedBox(width: screenWidth * .165),
    ]);
  }
}
