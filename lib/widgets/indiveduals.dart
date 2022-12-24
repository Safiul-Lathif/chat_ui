// ignore_for_file: must_be_immutable
import 'package:chat_ui/models/individuals_model.dart';
import 'package:chat_ui/pages/chat_page.dart';
import 'package:flutter/material.dart';

class Individuals extends StatelessWidget {
  Individuals({super.key});
  List<IndividualsModel> list = getAllTheList();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 600,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChatPage(
                                  name: list[index].name,
                                  teacher: 'Guest',
                                )),
                        (Route<dynamic> route) => true,
                      );
                    },
                    child: Container(
                        padding: const EdgeInsets.only(
                            left: 10, right: 5, top: 20, bottom: 7),
                        decoration: BoxDecoration(
                          color: list[index].contentColor,
                          border: Border.all(
                            color: list[index].color,
                          ),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(1.0, 1.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(),
                            Text(
                              list[index].role,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.brown),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  list[index].subject,
                                  style: const TextStyle(
                                      fontSize: 13, letterSpacing: 1),
                                ),
                                Text(list[index].reads,
                                    style: const TextStyle(
                                        fontSize: 13, letterSpacing: 1))
                              ],
                            )
                          ],
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 40,
                    ),
                    CircleAvatar(
                      backgroundColor: list[index].bgColor,
                      child: Image.network(
                        list[index].icons,
                        width: 30,
                        height: 30,
                        color: list[index].color,
                      ),
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    Positioned(
                      child: Container(
                          width: 170,
                          height: 30,
                          padding: const EdgeInsets.only(),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  list[index].nameColor,
                                  list[index].bgColor,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.centerRight),
                            border: Border.all(
                              color: list[index].nameColor,
                            ),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0.0, 1.0), //(x,y)
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              list[index].name,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          )),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
