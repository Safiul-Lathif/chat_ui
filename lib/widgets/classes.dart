// ignore_for_file: must_be_immutable

import 'package:chat_ui/models/classes_model.dart';
import 'package:chat_ui/pages/chat_page.dart';
import 'package:flutter/material.dart';

class ClassesScreen extends StatelessWidget {
  ClassesScreen({super.key});
  List<ClassesModel> list = getAllTheList();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 600,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Stack(children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatPage(
                                name: list[index].role,
                                teacher: list[index].name,
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
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Image(
                                  height: 30,
                                  width: 30,
                                  image: NetworkImage(
                                      "https://cdn-icons-png.flaticon.com/512/538/538899.png")),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                list[index].role,
                                style: const TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Image(
                                  height: 20,
                                  width: 20,
                                  image: NetworkImage(
                                      "https://cdn-icons-png.flaticon.com/512/686/686308.png")),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                list[index].pending,
                                style: const TextStyle(
                                  color: Colors.brown,
                                ),
                              ),
                              const Text(
                                "|  ",
                                style: TextStyle(
                                    color: Colors.brown,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Image(
                                  height: 20,
                                  width: 20,
                                  image: NetworkImage(
                                      "https://cdn-icons-png.flaticon.com/512/2118/2118198.png")),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                list[index].reads,
                                style: const TextStyle(
                                  color: Colors.brown,
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                ),
              ),
              Center(
                child: Positioned(
                  child: Container(
                      width: 150,
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
              ),
            ]);
          },
        ),
      ),
    );
  }
}
