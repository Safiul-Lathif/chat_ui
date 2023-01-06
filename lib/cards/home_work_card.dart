import 'package:chat_ui/models/news_feed_model.dart';
import 'package:chat_ui/miscellaneous.dart';
import 'package:chat_ui/widgets/school_admin.dart';
import 'package:chat_ui/widgets/time_widget.dart';
import 'package:chat_ui/widgets/visiblity_widget.dart';
import 'package:flutter/material.dart';

class HomeWorkPage extends StatelessWidget {
  const HomeWorkPage({super.key, required this.data, required this.itemIndex});
  final NewsFeedList data;
  final int itemIndex;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: SizedBox(
            width: 100,
            height: 26,
            child: Container(
              // width: 155.5 * fem,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                ),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/rectangle-5-LCz.png',
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3f000000),
                    offset: Offset(-2 * fem, 2 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  "KYC Team",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: SizedBox(
            width: 260,
            height: 32,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/rectangle-5-LCz.png',
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    " Home Work for the day ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    "02-Aug-2022",
                    softWrap: true,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade700),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Subject :",
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Multiple",
                              style: TextStyle(color: Colors.brown),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "New Home Work Available Now !",
                          style: TextStyle(color: Colors.brown),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 1,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Colors.white,
                            Color(0xffcccccc),
                            Colors.white
                          ])),
                        ),
                        Row(
                          children: [
                            Text(
                              "Take me to home work section ",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationStyle: TextDecorationStyle.double,
                                  color: Colors.blueAccent.shade700),
                            ),
                            Icon(
                              Icons.book,
                              size: 15,
                              color: Colors.blueAccent.shade700,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.thumb_up_alt_outlined,
                              size: 15,
                            ),
                            Text(
                              "Ask: 20 | ",
                              style: TextStyle(fontSize: 11),
                            ),
                            Icon(
                              Icons.remove_red_eye_sharp,
                              size: 15,
                            ),
                            Text(
                              "Watched: 35",
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),
            const TimeWiget()
          ],
        ),
        VisiblityWidget(visible: data.visibility),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: SizedBox(
            width: 100,
            height: 30,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                  topLeft: Radius.circular(5),
                ),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/rectangle-5-LCz.png',
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x3f000000),
                    offset: Offset(-2 * fem, 2 * fem),
                    blurRadius: 2 * fem,
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  "KYC Team",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: SizedBox(
            width: 300,
            height: 52,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/rectangle-5-LCz.png',
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8, top: 8),
                child: Column(
                  children: const [
                    Text(
                      " A modeification made in  Home Work for the day 02-Aug-2022 ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 0, bottom: 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade700),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Subject :",
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Multiple",
                              style: TextStyle(color: Colors.brown),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "New Home Work Available Now !",
                          style: TextStyle(color: Colors.brown),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 1,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Colors.white,
                            Color(0xffcccccc),
                            Colors.white
                          ])),
                        ),
                        Row(
                          children: [
                            Text(
                              "Take me to home work section ",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationStyle: TextDecorationStyle.double,
                                  color: Colors.blueAccent.shade700),
                            ),
                            Icon(
                              Icons.book,
                              size: 15,
                              color: Colors.blueAccent.shade700,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.thumb_up_alt_outlined,
                              size: 15,
                            ),
                            Text(
                              "Ask: 20 | ",
                              style: TextStyle(fontSize: 11),
                            ),
                            Icon(
                              Icons.remove_red_eye_sharp,
                              size: 15,
                            ),
                            Text(
                              "Watched: 35",
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ),
            const TimeWiget()
          ],
        ),
        VisiblityWidget(visible: data.visibility),
        const SchoolAdmin(),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.notification_add,
                color: Colors.redAccent.shade100,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: SizedBox(
                  width: 260,
                  height: 18,
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/rectangle-6-coU.png',
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: Column(
                        children: const [
                          Text(
                            "Fee Reminder triggered to parents ",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              " Take me to a Fees section ",
                              style: TextStyle(
                                  color: Colors.red.shade700,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 1.5),
                            ),
                            Icon(
                              Icons.wallet,
                              color: Colors.red.shade700,
                              size: 17,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                "Visible to defaulters",
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 0.9152272542 * ffem / fem,
                                  letterSpacing: 1.2 * fem,
                                  color: const Color(0xff000000),
                                ),
                              )),
                        ),
                        Container(
                          height: 1,
                          decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Colors.white,
                            Color(0xffcccccc),
                            Colors.white
                          ])),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Applicable : 20 | Action taken : 35 | Payment initiated : 10",
                          style: SafeGoogleFont(
                            'Italic',
                            fontSize: 13 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 0.9152272542 * ffem / fem,
                            letterSpacing: 1.2 * fem,
                            color: const Color(0xff000000),
                          ),
                        )
                      ],
                    )),
              ),
            ),
            const TimeWiget()
          ],
        ),
        VisiblityWidget(visible: 'Visible to Admin'),
        VisiblityWidget(visible: 'Visible to ClassTeacher'),
        const SchoolAdmin(),
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrange),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    )),
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                showDialogFunc(
                                    context,
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZyyoQ9c9C0WZhiNYTAxmZgOoPVzFSKCNoOw&usqp=CAU",
                                    "Then took place in X-A where the students participated an inter school completion and won 2dn place in the event. it was a very proud moment for the school and we wish to this information");
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height:
                                    MediaQuery.of(context).size.height * 0.25,
                                decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                      topLeft: Radius.circular(5),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x3f000000),
                                        offset: Offset(-3 * fem, 3 * fem),
                                        blurRadius: 3 * fem,
                                      ),
                                    ],
                                    image: const DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        image: NetworkImage(
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZyyoQ9c9C0WZhiNYTAxmZgOoPVzFSKCNoOw&usqp=CAU"))),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 120,
                              child: Text(
                                "Then took place in X-A where the students participated an inter school completion and won 2dn place in the event. it was a very proud moment for the school and we wish to this information",
                                textAlign: TextAlign.start,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  color: const Color(0xff620d00),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ),
            const TimeWiget()
          ],
        ),
        VisiblityWidget(visible: data.visibility),
      ],
    );
  }
}

showDialogFunc(context, String img, String text) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              // padding: const EdgeInsets.all(15),
              child: Container(
                // decoration: BoxDecoration(
                //     color: Colors.blue.shade50,
                //     borderRadius: BorderRadius.circular(10),
                //     image: DecorationImage(
                //       colorFilter: ColorFilter.mode(
                //           Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                //       image: const NetworkImage(
                //           "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                //       fit: BoxFit.fill,
                //     )),
                // padding: const EdgeInsets.all(15),
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Center(
                          child: Column(
                        children: [
                          Hero(
                            tag: img,
                            child: Image(
                              image: NetworkImage(img),
                              width: 350,
                              height: 450,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25)),
                                image: DecorationImage(
                                  colorFilter: ColorFilter.mode(
                                      Colors.blue.withOpacity(0.3),
                                      BlendMode.dstATop),
                                  image: const NetworkImage(
                                      "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                  fit: BoxFit.fill,
                                )),
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              text,
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )),
                    ),
                  ],
                ),
              ),
            ),
            // Positioned(
            //   left: 312,
            //   bottom: 265,
            //   child: IconButton(
            //       onPressed: () {
            //         Navigator.pop(context);
            //       },
            //       icon: const CircleAvatar(
            //         radius: 12,
            //         backgroundColor: Colors.white,
            //         child: Icon(
            //           Icons.cancel_outlined,
            //           color: Colors.black,
            //         ),
            //       )),
            // )
          ],
        ),
      );
    },
  );
}
