// ignore_for_file: non_constant_identifier_names

import 'package:chat_ui/models/news_feed_model.dart';
import 'package:chat_ui/models/single_message_model.dart';
import 'package:chat_ui/widgets/time_widget.dart';
import 'package:chat_ui/widgets/visiblity_widget.dart';
import 'package:flutter/material.dart';

class ParentsApproved extends StatefulWidget {
  const ParentsApproved(
      {super.key, required this.data, required this.itemIndex});
  final NewsFeedList data;
  final int itemIndex;

  @override
  State<ParentsApproved> createState() => _ParentsApprovedState();
}

class _ParentsApprovedState extends State<ParentsApproved> {
  List<MessageModel> list = getList();
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
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
                      Image.network(
                        "https://cdn-icons-png.flaticon.com/128/5028/5028066.png",
                        width: 20,
                        height: 20,
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
                      onTap: () {
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
                    const TimeWiget()
                  ],
                ),
                VisiblityWidget(visible: widget.data.visibility)
              ],
            ),
          ],
        ),
      ),
    );
  }
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
                      height: MediaQuery.of(context).size.height * 0.39,
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
                          // const Padding(
                          //   padding: EdgeInsets.all(13.0),
                          //   child: Text(
                          //     "Waiting for approval",
                          //     style:
                          //         TextStyle(color: Colors.blue, fontSize: 16),
                          //   ),
                          // )
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
