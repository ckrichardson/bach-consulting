import 'package:flutter/material.dart';

class HeaderLink extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const HeaderLink({
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Padding(padding: EdgeInsets.only(left: 125)),
        TextButton(
          onPressed: () {
            onPressed();
          },
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              return Colors.transparent;
            },
          )),
          child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
