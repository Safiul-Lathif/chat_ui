import 'package:chat_ui/screens/group_info.dart';
import 'package:chat_ui/widgets/classes.dart';
import 'package:chat_ui/widgets/indiveduals.dart';
import 'package:chat_ui/widgets/main_group.dart';
import 'package:chat_ui/widgets/profile_info.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Route _createRoute() {
  //   return PageRouteBuilder(
  //       pageBuilder: (context, animation, secondaryAnimation) => ProfileInfo(),
  //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //         const begin = Offset(10.0, 0.0);
  //         const end = Offset.zero;

  //         const curve = Curves.ease;

  //         final tween = Tween(begin: begin, end: end);
  //         final curvedAnimation = CurvedAnimation(
  //           parent: animation,
  //           curve: curve,
  //         );

  //         return SlideTransition(
  //           position: tween.animate(curvedAnimation),
  //           child: child,
  //         );
  //       });
  // }

  // Route _createRoute1() {
  //   return PageRouteBuilder(
  //       pageBuilder: (context, animation, secondaryAnimation) =>
  //           const GroupInfo(),
  //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //         const begin = Offset(10.0, 0.0);
  //         const end = Offset.zero;

  //         const curve = Curves.ease;

  //         final tween = Tween(begin: begin, end: end);
  //         final curvedAnimation = CurvedAnimation(
  //           parent: animation,
  //           curve: curve,
  //         );

  //         return SlideTransition(
  //           position: tween.animate(curvedAnimation),
  //           child: child,
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();

    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(
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
                  topRight: Radius.circular(25), topLeft: Radius.circular(25))),
          child: Column(
            children: [
              SizedBox(
                height: 120,
                child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.lightGreen.shade600,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: 55,
                            width: 55,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpCKq1XnPYYDaUIlwlsvmLPZ-9-rdK28RToA&usqp=CAU")),
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  "Prakash",
                                  style: TextStyle(
                                      color: Color(0xff575757),
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  "F/O Lintiest",
                                  softWrap: true,
                                  style: TextStyle(
                                    color: Color(0xff575757),
                                    fontSize: 15,
                                  ),
                                )
                              ],
                            ),
                            const Text(
                              "xyz@gmail.com",
                              softWrap: true,
                              style: TextStyle(
                                  color: Color(0xff575757),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    )),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Wrap(
                  children: [
                    ListTile(
                      leading: Image.network(
                        "https://cdn-icons-png.flaticon.com/512/863/863864.png",
                        height: 25,
                        width: 25,
                      ),
                      title: Transform.translate(
                        offset: Offset(-16, 0),
                        child: const Text(
                          "Add Student",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://cdn-icons-png.flaticon.com/512/900/900797.png",
                        height: 25,
                        width: 25,
                      ),
                      title: Transform.translate(
                        offset: Offset(-16, 0),
                        child: const Text(
                          "Configuration",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://cdn-icons-png.flaticon.com/512/3107/3107363.png",
                        height: 25,
                        width: 25,
                      ),
                      title: Transform.translate(
                        offset: Offset(-16, 0),
                        child: const Text(
                          "Change Password",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://cdn-icons-png.flaticon.com/512/6741/6741153.png",
                        height: 25,
                        width: 25,
                      ),
                      title: Transform.translate(
                        offset: Offset(-16, 0),
                        child: const Text(
                          "Forget Password",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://cdn-icons-png.flaticon.com/512/182/182448.png",
                        height: 25,
                        width: 25,
                      ),
                      title: Transform.translate(
                        offset: Offset(-16, 0),
                        child: const Text(
                          "Logout",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.blue.shade50,
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.blue.withOpacity(0.3), BlendMode.dstATop),
              image: const NetworkImage(
                  "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
              fit: BoxFit.fill,
            )),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 15, right: 10, top: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Image(
                        height: 40,
                        width: 40,
                        image: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/3197/3197750.png")),
                    const SizedBox(
                      width: 10,
                    ),
                    const SizedBox(
                      width: 200,
                      child: Text(
                        "Sujatha International School",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Positioned(
                      // left: 370.4262695312 * fem,
                      top: 3 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 48.28 * fem,
                          height: 51 * fem,
                          child: GestureDetector(
                            onTap: () {
                              scaffoldKey.currentState!.openEndDrawer();
                            },
                            child: Image.asset(
                              'assets/userprofilesymbol.png',
                              width: 48.28 * fem,
                              height: 51 * fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    // Positioned(
                    //   left: 344.4262695312 * fem,
                    //   top: 3 * fem,
                    //   child: Align(
                    //     child: SizedBox(
                    //       width: 48.28 * fem,
                    //       height: 51 * fem,
                    //       child: GestureDetector(
                    //         onTap: () {
                    //           Navigator.of(context).push(_createRoute1());
                    //         },
                    //         child: Image.network(
                    //           'https://cdn-icons-png.flaticon.com/512/975/975660.png',
                    //           width: 48.28 * fem,
                    //           height: 51 * fem,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      padding: const EdgeInsets.only(
                          left: 10, right: 5, top: 10, bottom: 7),
                      decoration: BoxDecoration(
                          color: Colors.yellow.shade700,
                          border: Border.all(
                            color: Colors.pink.shade100,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: const Text(
                        "Communication",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: 18),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Image(
                      height: 40,
                      width: 40,
                      image: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/1077/1077909.png")),
                  const SizedBox(
                    width: 60,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              DefaultTabController(
                  length: 3,
                  initialIndex: 1,
                  child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.brown,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                        child: TabBar(
                          indicatorColor: Colors.blue.shade200,
                          indicatorWeight: 1,
                          labelPadding: const EdgeInsets.only(top: 10),
                          labelColor: Colors.blue.shade700,
                          labelStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                          unselectedLabelStyle:
                              const TextStyle(color: Colors.black),
                          unselectedLabelColor: Colors.black,
                          indicator: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(10), // Creates border
                              color: Colors.blue.shade200),
                          tabs: [
                            Tab(
                              child: Column(
                                children: const [
                                  Image(
                                      height: 30,
                                      width: 30,
                                      image: NetworkImage(
                                          "https://cdn-icons-png.flaticon.com/512/978/978012.png")),
                                  Text(
                                    "Main Groups",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            Tab(
                              child: Column(
                                children: const [
                                  Image(
                                      height: 30,
                                      width: 30,
                                      image: NetworkImage(
                                          "https://cdn-icons-png.flaticon.com/512/8112/8112926.png")),
                                  Text(
                                    "Classes",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            Tab(
                              child: Column(
                                children: const [
                                  Image(
                                      height: 30,
                                      width: 30,
                                      image: NetworkImage(
                                          "https://cdn-icons-png.flaticon.com/512/8246/8246876.png")),
                                  Text(
                                    "Individuals",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        height: 550,
                        child: TabBarView(children: [
                          const MainGroup(),
                          ClassesScreen(),
                          Individuals(),
                        ]))
                  ])),
            ]),
      ),
    );
  }
}
