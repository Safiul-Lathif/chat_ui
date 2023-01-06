// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:chat_ui/models/news_feed_model.dart';
import 'package:chat_ui/miscellaneous.dart';
import 'package:chat_ui/widgets/school_admin.dart';
import 'package:chat_ui/widgets/time_widget.dart';
import 'package:chat_ui/widgets/visiblity_widget.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key, required this.data, required this.itemIndex});
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
          padding: const EdgeInsets.only(left: 0, top: 5),
          child: Container(
            margin: EdgeInsets.fromLTRB(10 * fem, 0 * fem, 180 * fem, 0 * fem),
            padding: EdgeInsets.fromLTRB(11 * fem, 4 * fem, 15 * fem, 3 * fem),
            height: 23,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7 * fem),
              gradient: const LinearGradient(
                begin: Alignment(-0.93, -0.018),
                end: Alignment(1, -0.018),
                colors: <Color>[Color(0xff64a78b), Color(0xff69c767)],
                stops: <double>[0, 1],
              ),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x3f000000),
                  offset: Offset(-2 * fem, 2 * fem),
                  blurRadius: 2 * fem,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  data.teacher,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  data.className,
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
        Padding(
          padding: const EdgeInsets.only(left: 5, top: 5),
          child: SizedBox(
            width: 100,
            height: 25,
            child: Container(
              width: 105.5 * fem,
              height: 25,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/teacher.png',
                  ),
                ),
              ),
              child: const Center(
                child: Text(
                  "literary",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.75,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
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
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/128/1548/1548204.png",
                              width: 80,
                            ),
                            Container(
                              width: 1,
                              height: MediaQuery.of(context).size.height * 0.12,
                              decoration:
                                  const BoxDecoration(color: Colors.grey),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 160,
                              child: Text(
                                "This document contains the itinerary of the tour we had planned in january 2023. we are equally exited about this trip as your children",
                                textAlign: TextAlign.start,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  color: const Color(0xff620d00),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.shortestSide,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "Download Document",
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                decoration: TextDecoration.underline,
                                color: Colors.green,
                              ),
                            ),
                            const Icon(
                              Icons.download,
                              size: 20,
                              color: Colors.green,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.thumb_up_outlined,
                              size: 15,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Accepted: 20 | ",
                              style: TextStyle(fontSize: 11),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.remove_red_eye_sharp,
                              size: 15,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Downloaded: 20",
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
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.76,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
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
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.red),
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(15),
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.network(
                                      "https://cdn-icons-png.flaticon.com/128/44/44289.png",
                                      width: 80,
                                    ),
                                    SizedBox(
                                      width: 95,
                                      child: Text(
                                        "Glad to share these pictures taken in our last tour",
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
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 120,
                              child: GridView.builder(
                                shrinkWrap: true,
                                itemCount: 9,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 5,
                                  mainAxisSpacing: 5,
                                ),
                                itemBuilder: (context, index) {
                                  return Container(
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZyyoQ9c9C0WZhiNYTAxmZgOoPVzFSKCNoOw&usqp=CAU"),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5),
                                          topLeft: Radius.circular(5),
                                        )),
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.shortestSide,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "View full info",
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                decoration: TextDecoration.underline,
                                color: Colors.red,
                              ),
                            ),
                            const Icon(
                              Icons.info_outline,
                              color: Colors.red,
                              size: 20,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.publish,
                              size: 15,
                            ),
                            Text(
                              "Published 3-dec-22  ",
                              style: TextStyle(fontSize: 13),
                            ),
                            Icon(
                              Icons.watch,
                              size: 15,
                            ),
                            Text(
                              "9:00 AM",
                              style: TextStyle(fontSize: 13),
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
                              Icons.thumb_up_outlined,
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
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x3fccccccc),
                      offset: Offset(0 * fem, 0 * fem),
                      blurRadius: 1 * fem,
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  radius: 11,
                  backgroundImage: AssetImage("assets/rectangle-7-X7G.png"),
                  child: Text(
                    "!",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, top: 5),
                child: Container(
                  margin: EdgeInsets.fromLTRB(
                      10 * fem, 0 * fem, 200 * fem, 0 * fem),
                  padding:
                      EdgeInsets.fromLTRB(11 * fem, 4 * fem, 15 * fem, 3 * fem),
                  height: 23,
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
                        'assets/rectangle-3-jsg.png',
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Mahesh ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Principal",
                        softWrap: true,
                        style: TextStyle(
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
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 10),
          child: SizedBox(
            width: 160,
            height: 32,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/rectangle-7-JCr.png',
                  ),
                ),
              ),
              child: const Center(
                child: Text(
                  "From Management ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: SizedBox(
            width: 120,
            height: 32,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/rectangle-7-oyU.png',
                  ),
                ),
              ),
              child: const Center(
                child: Text(
                  "Quote",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.65,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
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
                        Text(
                          "Upcoming month november 2022, we have decided to mark all saturday as working days in order to compensatate the rain holidays which we had in october 2022",
                          textAlign: TextAlign.start,
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125 * ffem / fem,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 1,
                          width: MediaQuery.of(context).size.shortestSide,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.thumb_up_outlined,
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
      ],
    );
  }
}
