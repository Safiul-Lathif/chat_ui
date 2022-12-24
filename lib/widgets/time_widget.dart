import 'package:chat_ui/miscellaneous.dart';
import 'package:flutter/material.dart';

class TimeWiget extends StatelessWidget {
  const TimeWiget({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Container(
      // timeFzA (7:845)
      margin: EdgeInsets.fromLTRB(0 * fem, 35 * fem, 0 * fem, 33 * fem),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // group22AbL (7:847)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 1 * fem),
            width: 10 * fem,
            height: 10 * fem,
            child: Image.asset(
              'assets/group-22-MXG.png',
              width: 10 * fem,
              height: 10 * fem,
            ),
          ),
          Container(
            // amouC (7:846)
            margin: EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
            child: Text(
              '9:00AM',
              style: SafeGoogleFont(
                'Inter',
                fontSize: 10 * ffem,
                fontWeight: FontWeight.w300,
                height: 0.9152273178 * ffem / fem,
                letterSpacing: 1 * fem,
                color: const Color(0xff717171),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
