import 'package:flutter/material.dart';

class SchoolAdmin extends StatelessWidget {
  const SchoolAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 5),
      child: SizedBox(
        width: 100,
        height: 25,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
              topLeft: Radius.circular(5),
            ),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/rectangle-6-3Ez.png',
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0x3f000000),
                offset: Offset(-2 * fem, 2 * fem),
                blurRadius: 2 * fem,
              ),
            ],
          ),
          child: const Center(
            child: Text(
              "School Admin ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
