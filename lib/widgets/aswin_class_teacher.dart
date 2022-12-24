import 'package:flutter/material.dart';

class AswinHeadder extends StatelessWidget {
  const AswinHeadder({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 5),
      child: Container(
        // margin: EdgeInsets.fromLTRB(10 * fem, 0 * fem, 100 * fem, 0 * fem),
        // padding: EdgeInsets.fromLTRB(11 * fem, 4 * fem, 15 * fem, 3 * fem),
        height: 23,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7 * fem),
          gradient: const LinearGradient(
            begin: Alignment(-0.93, -0.018),
            end: Alignment(1, -0.018),
            colors: <Color>[Color(0xff64a78b), Color(0xff69c767)],
            stops: <double>[0, 1],
          ),
          boxShadow: [
            BoxShadow(
              color: const Color(0x3f000000),
              offset: Offset(-2 * fem, 2 * fem),
              blurRadius: 2 * fem,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Aswin",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Class Teacher IV-A",
              softWrap: true,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
