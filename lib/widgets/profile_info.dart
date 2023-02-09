// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:chat_ui/miscellaneous.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  ProfileInfo({super.key});
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.blueGrey.shade300,
          child: Column(children: [
            SizedBox(
              height: 60,
            ),
            Center(
                child: Text("Profile",
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 21 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 0.9152272542 * ffem / fem,
                      letterSpacing: 1.4 * fem,
                      color: const Color(0xff575757),
                    ))),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.transparent,
                  Colors.transparent,
                  Colors.blueGrey,
                  Colors.blueGrey,
                  Colors.transparent,
                  Colors.transparent
                ])),
                height: 0.3,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'assets/userprofilesymbol.png',
                      width: 88.28 * fem,
                      height: 81 * fem,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Prakash",
                          style: const TextStyle(
                              color: Color(0xff575757),
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          "F/O Linthikesh",
                          softWrap: true,
                          style: const TextStyle(
                            color: Color(0xff575757),
                            fontSize: 15,
                          ),
                        )
                      ],
                    ),
                    Text(
                      "xyz@gmail.com",
                      softWrap: true,
                      style: const TextStyle(
                          color: Color(0xff575757),
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Class",
                      style: const TextStyle(
                          color: Color(0xff575757),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      "LKG - A",
                      softWrap: true,
                      style: const TextStyle(
                        color: Color(0xff575757),
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent,
                  ),
                  padding: const EdgeInsets.only(top: 10),
                  height: MediaQuery.of(context).size.height * 0.734,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.blue.withOpacity(0.2), BlendMode.dstATop),
                          image: const NetworkImage(
                              "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(25))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(
                              "Detail 1",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff575757)),
                            ),
                            subtitle: Text("XXXX-XXX-XXX-XXXXX-XXX"),
                          ),
                          ListTile(
                            title: Text(
                              "Detail 2",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff575757)),
                            ),
                            subtitle: Text("XXXX-XXX-XXX"),
                          ),
                          ListTile(
                            title: Text(
                              "Detail 3",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff575757)),
                            ),
                            subtitle: Text("XXXX-XXX-XXXXXX"),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(top: 10, bottom: 10),
                          //   child: Container(
                          //     width: double.maxFinite,
                          //     decoration: BoxDecoration(
                          //         gradient: LinearGradient(colors: [
                          //       Colors.blueGrey,
                          //       Colors.blueGrey,
                          //     ])),
                          //     height: 0.3,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 255,
                  bottom: 547,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.edit_calendar,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
