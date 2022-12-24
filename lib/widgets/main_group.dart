import 'package:flutter/material.dart';

class MainGroup extends StatelessWidget {
  const MainGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 600,
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                        width: 340,
                        padding: const EdgeInsets.only(
                            top: 20, left: 10, right: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.pink.shade50,
                            border: Border.all(
                              color: Colors.pink,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: const Text(
                          " This group contains all teaching staffs and non-teaching staffs",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.brown),
                        )),
                  ),
                  Center(
                    child: Positioned(
                      child: Container(
                          width: 270,
                          padding: const EdgeInsets.only(
                              left: 40, right: 0, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Colors.pink.shade300,
                              Colors.pink.shade100
                            ]),
                            border: Border.all(
                              color: Colors.pink.shade300,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(16)),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: const Text(
                            " School internal  Communication",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          )),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                        width: 340,
                        padding: const EdgeInsets.only(
                            top: 20, left: 10, right: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.green.shade50,
                            border: Border.all(
                              color: Colors.green,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: const Text(
                          " This group only contains management users",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.brown),
                        )),
                  ),
                  Center(
                    child: Positioned(
                      child: Container(
                          width: 260,
                          padding: const EdgeInsets.only(
                              left: 69, right: 25, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.green.shade400,
                                Colors.green.shade100
                              ]),
                              border: Border.all(
                                color: Colors.green.shade400,
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1.0, 1.0), //(x,y)
                                  blurRadius: 6.0,
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: const Text(
                            " Management Only",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                        width: 340,
                        padding: const EdgeInsets.only(
                            top: 20, left: 10, right: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.orange.shade50,
                            border: Border.all(
                              color: Colors.orange,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: const Text(
                          " This group contains only  teaching staffs",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.brown),
                        )),
                  ),
                  Center(
                    child: Positioned(
                      child: Container(
                          width: 260,
                          padding: const EdgeInsets.only(
                              left: 69, right: 25, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.orange.shade400,
                                Colors.orange.shade100
                              ]),
                              border: Border.all(
                                color: Colors.orange.shade400,
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1.0, 1.0), //(x,y)
                                  blurRadius: 6.0,
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: const Text(
                            " Academic Staffs",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                        width: 340,
                        padding: const EdgeInsets.only(
                            top: 20, left: 10, right: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            border: Border.all(
                              color: Colors.blue,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: const Text(
                          " A Custamaized group created by you ",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.brown),
                        )),
                  ),
                  Center(
                    child: Positioned(
                      child: Container(
                          width: 260,
                          padding: const EdgeInsets.only(
                              left: 69, right: 25, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.blue.shade400,
                                Colors.blue.shade100
                              ]),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1.0, 1.0), //(x,y)
                                  blurRadius: 6.0,
                                ),
                              ],
                              border: Border.all(
                                color: Colors.blue.shade300,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: const Text(
                            "Transport admins",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                        width: 340,
                        padding: const EdgeInsets.only(
                            top: 20, left: 10, right: 10, bottom: 10),
                        decoration: BoxDecoration(
                            color: Colors.red.shade50,
                            border: Border.all(
                              color: Colors.red,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(1.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))),
                        child: const Text(
                          " Create your own customaized group",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.brown,
                          ),
                        )),
                  ),
                  Center(
                    child: Positioned(
                      child: Container(
                          width: 250,
                          padding: const EdgeInsets.only(
                              left: 80, right: 25, top: 10, bottom: 10),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Colors.red.shade400,
                                Colors.red.shade100
                              ]),
                              border: Border.all(
                                color: Colors.red,
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(1.0, 1.0), //(x,y)
                                  blurRadius: 6.0,
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: const Text(
                            "Customized",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
