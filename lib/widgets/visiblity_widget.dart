// ignore_for_file: must_be_immutable

import 'package:chat_ui/miscellaneous.dart';
import 'package:flutter/material.dart';

class VisiblityWidget extends StatelessWidget {
  VisiblityWidget({super.key, required this.visible});
  String visible;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      // visibletowholeclass5Lv (7:844)
      margin: EdgeInsets.fromLTRB(13 * fem, 5 * fem, 13 * fem, 0 * fem),
      child: Text(
        visible,
        style: SafeGoogleFont(
          'Inter',
          fontSize: 12 * ffem,
          fontWeight: FontWeight.w400,
          height: 0.9152272542 * ffem / fem,
          letterSpacing: 1.2 * fem,
          color: const Color(0xff000000),
        ),
      ),
    );
  }
}
