import 'package:flutter/material.dart';

import 'desktopHeaderLogo/desktopHeaderLogo.dart';
import 'desktopNavBar/desktopNavBar.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({Key? key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [DesktopHeaderLogo(), DesktopNavBar()]);
  }
}
