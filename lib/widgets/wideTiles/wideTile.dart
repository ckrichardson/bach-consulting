import 'package:flutter/material.dart';

class WideTile extends StatelessWidget {
  final Widget child;
  final BoxDecoration boxDecoration;

  const WideTile({Key? key, required this.child, required this.boxDecoration});

  @override
  Widget build(BuildContext context) {
    Size screenSizeObj = MediaQuery.of(context).size;
    double _screenWidth = screenSizeObj.width;
    double _screenHeight = screenSizeObj.height;
    return Row(
      children: [
        Container(
          height: _screenHeight * 0.7,
          width: _screenWidth,
          decoration: boxDecoration,
          child: child,
        )
      ],
    );
  }
}
