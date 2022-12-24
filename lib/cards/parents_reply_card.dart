// ignore_for_file: non_constant_identifier_names

import 'package:chat_ui/models/news_feed_model.dart';
import 'package:chat_ui/models/single_message_model.dart';
import 'package:chat_ui/miscellaneous.dart';
import 'package:chat_ui/widgets/visiblity_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ParentsReplyCard extends StatefulWidget {
  const ParentsReplyCard(
      {super.key, required this.data, required this.itemIndex});
  final NewsFeedList data;
  final int itemIndex;

  @override
  State<ParentsReplyCard> createState() => _ParentsReplyCardState();
}

class _ParentsReplyCardState extends State<ParentsReplyCard> {
  List<MessageModel> list = getPendingList();
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            Visibility(
                visible: isVisible,
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 1000),
                  reverseDuration: const Duration(milliseconds: 500),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          ShowDialog(context, list);
                        },
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/512/3719/3719420.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          DeleteContent(context);
                        },
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/128/5028/5028066.png",
                          width: 20,
                          height: 20,
                        ),
                      )
                    ],
                  ),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(9),
                            bottomLeft: Radius.circular(9),
                            bottomRight: Radius.circular(9)),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                        border: Border.all(
                          color: Colors.pink.shade300,
                        ),
                        gradient: LinearGradient(
                            colors: [
                              Colors.pink.shade400,
                              Colors.pink.shade200
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.centerRight),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              widget.data.teacher,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              widget.data.className,
                              softWrap: true,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onLongPress: () {
                        HapticFeedback.vibrate();
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.pink),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              widget.data.title,
                              style: const TextStyle(color: Colors.brown),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // group72SUS (7:816)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 44 * fem, 0 * fem, 43.72 * fem),
                      width: 67 * fem,
                      // height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group75jiS (7:817)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 4 * fem),
                            width: double.infinity,
                            height: 16 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // group70qmU (7:818)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 6 * fem, 0.94 * fem),
                                  width: 13 * fem,
                                  height: 11.06 * fem,
                                  child: Image.asset(
                                    'assets/group-70.png',
                                    width: 13 * fem,
                                    height: 11.06 * fem,
                                  ),
                                ),
                                Container(
                                  // group7676i (7:821)
                                  padding: EdgeInsets.fromLTRB(
                                      2 * fem, 3 * fem, 1 * fem, 1 * fem),
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff2c5ec0),
                                    borderRadius:
                                        BorderRadius.circular(3 * fem),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x93000000),
                                        offset: Offset(-1 * fem, 1 * fem),
                                        blurRadius: 2 * fem,
                                      ),
                                    ],
                                  ),
                                  child: Text(
                                    'Approve',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 10 * ffem,
                                      fontWeight: FontWeight.w300,
                                      height: 0.9152273178 * ffem / fem,
                                      letterSpacing: 1 * fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Container(
                            // group73hqc (7:824)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 3 * fem, 7 * fem, 0 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // group71ote (7:828)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 12.9 * fem, 0 * fem),
                                  width: 13.1 * fem,
                                  height: 13.28 * fem,
                                  child: Image.asset(
                                    'assets/group-71.png',
                                    width: 13.1 * fem,
                                    height: 13.28 * fem,
                                  ),
                                ),
                                Container(
                                  // group77HYv (7:825)
                                  width: 34 * fem,
                                  height: 16 * fem,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff2c5ec0),
                                    borderRadius:
                                        BorderRadius.circular(3 * fem),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x93000000),
                                        offset: Offset(-1 * fem, 1 * fem),
                                        blurRadius: 2 * fem,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Deny',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 10 * ffem,
                                        fontWeight: FontWeight.w300,
                                        height: 0.9152273178 * ffem / fem,
                                        letterSpacing: 1 * fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                VisiblityWidget(visible: widget.data.visibility),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

DeleteContent(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
        return Dialog(
            child: SizedBox(
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Are you sure you want to delete?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red.shade400,
                          minimumSize: const Size(30, 40),
                          textStyle: const TextStyle(fontSize: 14),
                          side:
                              BorderSide(width: 1, color: Colors.red.shade400)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: const [
                          Icon(
                            Icons.delete,
                            size: 17,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Delete',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.green.shade400,
                          minimumSize: const Size(30, 40),
                          textStyle: const TextStyle(fontSize: 14),
                          side:
                              const BorderSide(width: 1, color: Colors.green)),
                      onPressed: () {
                        setState(() {});
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: const [
                          Icon(
                            Icons.clear,
                            size: 17,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Cancel', style: TextStyle(color: Colors.white)),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ));
      });
    },
  );
}

ShowDialog(contex, List<MessageModel> list) {
  return showDialog(
      context: (contex),
      builder: ((context) {
        return Center(
          child: Material(
            type: MaterialType.transparency,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.41,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 179, 204, 245),
                        border: Border.all(
                          color: Colors.blue,
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
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
                                      Colors.blueAccent.shade400,
                                      Colors.blueAccent.shade100,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.centerRight)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.network(
                                  "https://cdn-icons-png.flaticon.com/512/1665/1665646.png",
                                  width: 30,
                                  height: 30,
                                  color: Colors.white,
                                ),
                                const Text(
                                  "Message Info",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                      letterSpacing: 2),
                                ),
                                Image.network(
                                    "https://cdn-icons-png.flaticon.com/512/3972/3972676.png",
                                    color: Colors.white,
                                    width: 40,
                                    height: 40)
                              ],
                            ),
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: list.length,
                              itemBuilder: (context, index) {
                                return Table(
                                  border: TableBorder.all(
                                    color: Colors.brown.shade400,
                                    //style: BorderStyle.solid,
                                    width: 0.2,
                                  ),
                                  children: [
                                    TableRow(children: [
                                      Center(
                                          child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          list[index].category,
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      )),
                                      Center(
                                          child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text(
                                          list[index].value,
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      ))
                                    ]),
                                  ],
                                );
                              }),
                          const Padding(
                            padding: EdgeInsets.all(13.0),
                            child: Text(
                              "Waiting for approval",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.87,
                  bottom: MediaQuery.of(context).size.height * 0.65,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.cancel,
                        color: Colors.white,
                      )),
                )
              ],
            ),
          ),
        );
      }));
}
