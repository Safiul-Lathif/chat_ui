// ignore_for_file: file_names

import 'package:chat_ui/miscellaneous.dart';
import 'package:flutter/material.dart';

class MessageWidget extends StatefulWidget {
  const MessageWidget({super.key, required this.focusNode});
  final FocusNode focusNode;

  @override
  State<MessageWidget> createState() => _MessageWidgetState();
}

class _MessageWidgetState extends State<MessageWidget> {
  bool isEveryone = true;
  bool isTeacher = false;
  bool isParent = false;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            color: Colors.blue.shade50,
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.blue.withOpacity(0.3), BlendMode.dstATop),
              image: const NetworkImage(
                  "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
              fit: BoxFit.fill,
            )),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
                Widget>[
          const Icon(Icons.arrow_drop_down),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Row(
              children: [
                Container(
                  // group38wXp (7:1664)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 10 * fem, 0 * fem),
                  width: 25 * fem,
                  height: 24 * fem,
                  child: Image.asset(
                    isParent
                        ? 'assets/parentIcon.png'
                        : !isTeacher
                            ? 'assets/group-38-ZQv.png'
                            : 'assets/teacherIcon.png',
                    width: 25 * fem,
                    height: 24 * fem,
                  ),
                ),
                Container(
                  // group18dfY (7:1623)
                  width: 105.5 * fem,
                  height: 25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        isParent
                            ? 'assets/parents.png'
                            : !isTeacher
                                ? 'assets/rectangle-7-55t.png'
                                : 'assets/teacher.png',
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      isParent
                          ? 'Parents'
                          : isTeacher
                              ? 'Teachers'
                              : 'Everyone',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                border: Border.all(
                    color: isParent
                        ? Colors.pink
                        : !isTeacher
                            ? Colors.orange
                            : Colors.green),
              ),
              child: Column(
                children: [
                  SizedBox(
                    width: 321 * fem,
                    height: 30 * fem,
                    child: Text(
                      '"This message will be visible for 10 users"',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 0.915227294 * ffem / fem,
                        letterSpacing: 1.6 * fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  DefaultTabController(
                      length: 5,
                      initialIndex: 0,
                      child: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          child: TabBar(
                            indicatorColor: Colors.transparent,
                            // indicatorWeight: 1,
                            labelPadding: const EdgeInsets.only(
                              top: 10,
                            ),
                            // labelColor: Colors.blue.shade700,
                            labelStyle: SafeGoogleFont(
                              'Inter',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 0.9152272542 * ffem / fem,
                              letterSpacing: 1.2 * fem,
                              color: const Color(0xff000000),
                              decoration: TextDecoration.underline,
                              decorationColor: const Color(0xff2c5ec0),
                            ),

                            labelColor: Colors.blue.shade800,
                            unselectedLabelStyle:
                                const TextStyle(color: Colors.black),
                            unselectedLabelColor: Colors.black,
                            // indicatorSize: TabBarIndicatorSize.label,
                            // indicator: Decoration(),
                            // indicatorPadding: EdgeInsets.only(left: 3, right: 3),
                            tabs: [
                              Tab(
                                child: Container(
                                  // autogroupdwne7m4 (Byw2v1GxsxHWZiWLeZdWnE)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 15 * fem, 0 * fem),
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // image76Gvn (7:1641)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 10 * fem),
                                        width: 12 * fem,
                                        height: 12 * fem,
                                        child: Image.network(
                                          'https://cdn-icons-png.flaticon.com/512/1434/1434762.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        // textK6S (7:1632)
                                        'Text',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 0.9152272542 * ffem / fem,
                                          letterSpacing: 1.2 * fem,
                                          color: const Color(0xff000000),
                                          // decoration: TextDecoration.underline,
                                          // color: const Color(0xff2c5ec0),
                                          // decorationColor:
                                          //     const Color(0xff2c5ec0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Tab(
                                child: SizedBox(
                                  // autogroupfq6vwdc (Byw36qJFmcGFhPPkfJFQ6v)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // image76Gvn (7:1641)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 10 * fem),
                                        width: 12 * fem,
                                        height: 12 * fem,
                                        child: Image.asset(
                                          'assets/image-76-9a2.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        // documentyaJ (7:1633)
                                        'Document',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 0.9152272542 * ffem / fem,
                                          letterSpacing: 1.2 * fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Tab(
                                child: SizedBox(
                                  // autogroupcg2eCWv (Byw3ejYmTMthwWSDEhCG2e)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // image79ikA (7:1643)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 1 * fem, 10 * fem),
                                        width: 12 * fem,
                                        height: 12 * fem,
                                        child: Image.asset(
                                          'assets/image-79-RTQ.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        // audio2F4 (7:1636)
                                        'Audio',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 0.9152272542 * ffem / fem,
                                          letterSpacing: 1.2 * fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Tab(
                                child: SizedBox(
                                  // autogroup3ztvkmQ (Byw3UaB2qNqRZ97QcK3Ztv)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // image78g9G (7:1644)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 9 * fem),
                                        width: 12 * fem,
                                        height: 12 * fem,
                                        child: Image.asset(
                                          'assets/image-78-LEe.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        // materialBLv (7:1635)
                                        'Material',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 0.9152272542 * ffem / fem,
                                          letterSpacing: 1.2 * fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Tab(
                                child: SizedBox(
                                  // autogroupfhaiiAW (Byw3J5UX5ZKQo81JHkfHAi)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // image77SMQ (7:1642)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 1 * fem, 9 * fem),
                                        width: 12 * fem,
                                        height: 12 * fem,
                                        child: Image.asset(
                                          'assets/image-77-Mfg.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        // imagejbQ (7:1634)
                                        'Image',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 0.9152272542 * ffem / fem,
                                          letterSpacing: 1.2 * fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            width: 350 * fem,
                            height: 112 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7 * fem),
                              border:
                                  Border.all(color: const Color(0xff9f9f9f)),
                            ),
                            child: TabBarView(children: <Widget>[
                              Center(
                                child: TextField(
                                  focusNode: widget.focusNode,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration.collapsed(
                                    hintText: 'Type Your Text Here',
                                    hintStyle: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 0.9152272542 * ffem / fem,
                                      letterSpacing: 1.2 * fem,
                                      color: const Color(0xff797979),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              ("https://cdn-icons-png.flaticon.com/128/3143/3143540.png"),
                                            ),
                                            fit: BoxFit.fill)),
                                  ),
                                  Text(
                                    "Please select Documents files to upload",
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 0.9152272542 * ffem / fem,
                                      letterSpacing: 1.2 * fem,
                                      color: const Color(0xff797979),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              ("https://cdn-icons-png.flaticon.com/128/5236/5236323.png"),
                                            ),
                                            fit: BoxFit.fill)),
                                  ),
                                  Text(
                                    "Please select Audio files to upload",
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 0.9152272542 * ffem / fem,
                                      letterSpacing: 1.2 * fem,
                                      color: const Color(0xff797979),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              ("https://cdn-icons-png.flaticon.com/128/1981/1981438.png"),
                                            ),
                                            fit: BoxFit.fill)),
                                  ),
                                  Text(
                                    "Please select Material files to upload",
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 0.9152272542 * ffem / fem,
                                      letterSpacing: 1.2 * fem,
                                      color: const Color(0xff797979),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              ("https://cdn-icons-png.flaticon.com/128/6632/6632547.png"),
                                            ),
                                            fit: BoxFit.fill)),
                                  ),
                                  Text(
                                    "Please select image files to upload",
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 0.9152272542 * ffem / fem,
                                      letterSpacing: 1.2 * fem,
                                      color: const Color(0xff797979),
                                    ),
                                  )
                                ],
                              )
                            ])),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Align(
                              child: SizedBox(
                                width: 78 * fem,
                                height: 11 * fem,
                                child: Text(
                                  'Visible to.. ',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 0.9152272542 * ffem / fem,
                                    letterSpacing: 1.2 * fem,
                                    color: const Color(0xff303030),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 188,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 10,
                              ),
                              child: Container(
                                // group508zE (7:1650)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 3 * fem, 2 * fem, 0 * fem),
                                width: 45 * fem,
                                height: 22 * fem,
                                decoration: BoxDecoration(
                                  color: isParent
                                      ? Colors.pink
                                      : !isTeacher
                                          ? Colors.orange
                                          : Colors.green,
                                  borderRadius: BorderRadius.circular(10 * fem),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x93000000),
                                      offset: Offset(-1 * fem, 1 * fem),
                                      blurRadius: 2 * fem,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 5, right: 5, top: 6, bottom: 3),
                                    child: Text(
                                      'Send',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 0.9152272542 * ffem / fem,
                                        letterSpacing: 1.2 * fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 275 * fem,
                          height: 12 * fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group46cnv (7:1654)
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2 * fem),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        // autogroupwhtnLyp (Byw4twySVDHZMSzadSWHtn)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 8 * fem, 0 * fem),
                                        width: 11 * fem,
                                        height: 12 * fem,
                                        child: Transform.scale(
                                          scale: 0.7,
                                          child: Checkbox(
                                            activeColor: Colors.transparent,
                                            checkColor: const Color(0xfff98a1d),
                                            value: isEveryone,
                                            onChanged: (value) {
                                              setState(() {
                                                isEveryone = value!;
                                              });
                                            },
                                          ),
                                        )),
                                    Text(
                                      // everyonecAe (7:1655)
                                      'Everyone',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 0.9152272542 * ffem / fem,
                                        letterSpacing: 1.2 * fem,
                                        color: !isEveryone
                                            ? const Color(0xff8e8e8e)
                                            : const Color(0xfff98a1d),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 19 * fem,
                              ),
                              Container(
                                // group47Hna (7:1657)
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2 * fem),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // rectangle23DAS (7:1659)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 8 * fem, 0 * fem),
                                      width: 12 * fem,
                                      height: 12 * fem,
                                      child: Transform.scale(
                                        scale: 0.7,
                                        child: Checkbox(
                                          activeColor: Colors.transparent,
                                          checkColor: Colors.green,
                                          value: isTeacher,
                                          onChanged: (value) {
                                            setState(() {
                                              isTeacher = value!;
                                              if (isParent == true) {
                                                isParent = !isParent;
                                              }
                                              if (isEveryone == true) {
                                                isEveryone = !isEveryone;
                                              } else {
                                                isEveryone = !isEveryone;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // teachersW9Y (7:1658)
                                      'Teachers',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 0.9152272542 * ffem / fem,
                                        letterSpacing: 1.2 * fem,
                                        color: !isTeacher
                                            ? const Color(0xff8e8e8e)
                                            : Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 19 * fem,
                              ),
                              Container(
                                // group48nsk (7:1660)
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2 * fem),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // rectangle23iFc (7:1662)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 8 * fem, 0 * fem),
                                      width: 12 * fem,
                                      height: 12 * fem,
                                      child: Transform.scale(
                                        scale: 0.7,
                                        child: Checkbox(
                                          activeColor: Colors.transparent,
                                          checkColor: Colors.pink,
                                          value: isParent,
                                          onChanged: (value) {
                                            setState(() {
                                              isParent = value!;
                                              if (isEveryone == true) {
                                                isEveryone = !isEveryone;
                                              } else {
                                                isEveryone = !isEveryone;
                                              }
                                              if (isTeacher == true) {
                                                isTeacher = !isTeacher;
                                              }
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // parentsRA2 (7:1661)
                                      'Parents',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 0.9152272542 * ffem / fem,
                                        letterSpacing: 1.2 * fem,
                                        color: isParent
                                            ? Colors.pink
                                            : const Color(0xff8e8e8e),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ])),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          )
        ]),
      ),
    );
  }
}
