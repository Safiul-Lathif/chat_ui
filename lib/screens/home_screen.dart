import 'package:chat_ui/widgets/classes.dart';
import 'package:chat_ui/widgets/indiveduals.dart';
import 'package:chat_ui/widgets/main_group.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
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
                    Column(
                      children: const <Widget>[
                        SizedBox(height: 10),
                        Text(
                          "Sujatha International School",
                          style: TextStyle(
                              color: Colors.brown,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                      ],
                    )
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
                  initialIndex: 0,
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
