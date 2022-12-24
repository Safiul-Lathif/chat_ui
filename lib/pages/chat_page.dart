// ignore_for_file: must_be_immutable

import 'package:chat_ui/models/chat_model.dart';
import 'package:chat_ui/models/group_chat.dart';
import 'package:chat_ui/miscellaneous.dart';
import 'package:chat_ui/widgets/chats_widget.dart';
import 'package:chat_ui/widgets/message_widget.dart';
import 'package:chat_ui/widgets/profile_info.dart';
import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  ChatPage({required this.name, required this.teacher, super.key});
  String name;
  String teacher;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatPageModel> list = getChatList();
  // Message replyMessage;
  final focusNode = FocusNode();
  List<GroupChat> newsFeedInfo = getNews();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          body: DraggableBottomSheet(
            minExtent: 170,
            useSafeArea: false,
            curve: Curves.easeIn,
            previewWidget: _previewWidget(),
            expandedWidget: MessageWidget(
              focusNode: focusNode,
            ),
            backgroundWidget: _backgroundWidget(),
            maxExtent: MediaQuery.of(context).size.height * 0.45,
            onDragging: (pos) {},
          ),
        );
      }),
    );
  }

  Widget _previewWidget() {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Column(
      children: [
        Positioned(
          child: SizedBox(
            width: 528 * fem,
            height: 177 * fem,
            child: Stack(
              children: [
                Container(
                    // decoration: const BoxDecoration(
                    //   gradient: LinearGradient(
                    //     begin: Alignment(-0, -1),
                    //     end: Alignment(-0, 0.333),
                    //     colors: <Color>[Color(0x00eff5ff), Color(0xffd9e7ff)],
                    //     stops: <double>[0, 0.706],
                    //   ),
                    // ),
                    ),
                Positioned(
                  // group79LbU (7:2394)
                  left: 190 * fem,
                  top: 124 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 22 * fem,
                      height: 22 * fem,
                      child: Image.asset(
                        'assets/group-79.png',
                        width: 22 * fem,
                        height: 22 * fem,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group78DQN (7:2401)
                  left: 75 * fem,
                  top: 127 * fem,
                  child: SizedBox(
                    width: 268 * fem,
                    height: 67 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle33EqG (7:2403)
                          left: 8 * fem,
                          top: 15 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 245 * fem,
                              height: 36 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13 * fem),
                                  color: const Color(0xffa3d371),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle32ugW (7:2404)
                          left: 8 * fem,
                          top: 33 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 245 * fem,
                              height: 18 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xff81ba49),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(13 * fem),
                                    bottomLeft: Radius.circular(13 * fem),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // initiatecommunicationnkJ (7:2405)
                          left: 44 * fem,
                          top: 23 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 180 * fem,
                              height: 20 * fem,
                              child: Text(
                                'Initiate Communication',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2125 * ffem / fem,
                                  color: const Color(0xff505050),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const ProfileInfo(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(10.0, 0.0);
          const end = Offset.zero;

          const curve = Curves.ease;

          final tween = Tween(begin: begin, end: end);
          final curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: curve,
          );

          return SlideTransition(
            position: tween.animate(curvedAnimation),
            child: child,
          );
        });
  }

  Widget _backgroundWidget() {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.blue.shade50,
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                image: const NetworkImage(
                    "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                fit: BoxFit.fill,
              )),
          padding: const EdgeInsets.only(top: 50, bottom: 10),
          child: Column(
            children: [
              Container(
                // group10sSJ (7:1576)
                margin:
                    EdgeInsets.fromLTRB(14 * fem, 0 * fem, 0 * fem, 0 * fem),
                width: 402 * fem,
                height: 57 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // bgcardYHY (7:1577)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Container(
                        width: 402 * fem,
                        height: 57 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7 * fem),
                        ),
                        child: Center(
                          // maskgroupgHG (7:1579)
                          child: SizedBox(
                            width: 402 * fem,
                            height: 57 * fem,
                            child: Image.asset(
                              'assets/mask-group.png',
                              width: 402 * fem,
                              height: 57 * fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // communicationp26 (7:1582)
                      left: 70 * fem,
                      top: 7 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 212 * fem,
                          height: 22 * fem,
                          child: Text(
                            'Communication',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 0.9152272542 * ffem / fem,
                              letterSpacing: 2.4 * fem,
                              color: const Color(0xff575757),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // prakashtetslkgaCYS (7:1583)
                      left: 70 * fem,
                      top: 32 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 279 * fem,
                          height: 28 * fem,
                          child: Text(
                            "${widget.name.replaceAll('Class Teacher:', '')} tets (${widget.teacher})",
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w300,
                              height: 0.9152272877 * ffem / fem,
                              letterSpacing: 1 * fem,
                              color: const Color(0xff575757),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group533JA (7:1584)
                      left: 4 * fem,
                      top: 11 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 63 * fem,
                          height: 36 * fem,
                          child: Image.asset(
                            'assets/group-53.png',
                            width: 63 * fem,
                            height: 36 * fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // userprofilesymbolWhY (7:2383)
                      left: 344.4262695312 * fem,
                      top: 3 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 48.28 * fem,
                          height: 51 * fem,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(_createRoute());
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
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                // line135xZY (7:1574)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 3 * fem),
                width: double.infinity,
                height: 1 * fem,
                color: const Color(0xffcccccc),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Container(
                  width: 50,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      gradient: LinearGradient(
                          colors: [
                            Colors.amber.shade400,
                            Colors.amber.shade100,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Column(
                    children: const [
                      Text("Dec"),
                      Text(
                        "10",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.73,
                  child: NewsFeedInfo(
                    focusNode: focusNode,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
