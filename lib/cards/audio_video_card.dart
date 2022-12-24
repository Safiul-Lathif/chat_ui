import 'package:chat_ui/models/news_feed_model.dart';
import 'package:chat_ui/miscellaneous.dart';
import 'package:chat_ui/widgets/time_widget.dart';
import 'package:chat_ui/widgets/visiblity_widget.dart';
import 'package:flutter/material.dart';

class AudioVideoDoc extends StatelessWidget {
  const AudioVideoDoc({super.key, required this.data, required this.itemIndex});
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
        Row(
          children: [
            const Icon(
              Icons.info,
              color: Colors.pinkAccent,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Container(
                margin:
                    EdgeInsets.fromLTRB(10 * fem, 0 * fem, 100 * fem, 0 * fem),
                padding:
                    EdgeInsets.fromLTRB(11 * fem, 4 * fem, 15 * fem, 3 * fem),
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
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, top: 5),
          child: SizedBox(
            width: 170,
            height: 36,
            child: Container(
              // width: 155.5 * fem,
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
                  "From Class Teacher ",
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
          padding: const EdgeInsets.only(left: 25, top: 5),
          child: SizedBox(
            width: 100,
            height: 30,
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
                  "Circular",
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
                  const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.65,
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
                        Text(
                          "All Saturdays in november will follow wednesday time table and as follows",
                          textAlign: TextAlign.start,
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 17 * ffem,
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
        Row(
          children: [
            Image.asset(
              'assets/group-36-cSE.png',
              width: 25,
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Container(
                margin:
                    EdgeInsets.fromLTRB(10 * fem, 0 * fem, 100 * fem, 0 * fem),
                padding:
                    EdgeInsets.fromLTRB(11 * fem, 4 * fem, 15 * fem, 3 * fem),
                height: 23,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7 * fem),
                  gradient: LinearGradient(
                    begin: const Alignment(-0.93, -0.018),
                    end: const Alignment(1, -0.018),
                    colors: <Color>[Colors.orangeAccent, Colors.pink.shade200],
                    stops: const <double>[0, 1],
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
                    const Text(
                      'Ashok ',
                      style: TextStyle(
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
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, top: 5),
          child: SizedBox(
            width: 170,
            height: 36,
            child: Container(
              // width: 155.5 * fem,
              height: 25,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/rectangle-7-x9g.png',
                  ),
                ),
              ),
              child: const Center(
                child: Text(
                  "From Maths Teacher ",
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
          padding: const EdgeInsets.only(left: 25, top: 5),
          child: SizedBox(
            width: 130,
            height: 30,
            child: Container(
              width: 105.5 * fem,
              height: 25,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/rectangle-7-x9g.png',
                  ),
                ),
              ),
              child: const Center(
                child: Text(
                  "Study Material",
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
                  const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.65,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.pink.shade300),
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
                          "Please use this document for referring integral",
                          textAlign: TextAlign.start,
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 17 * ffem,
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
                        Row(
                          children: [
                            Text(
                              "Download",
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                decoration: TextDecoration.underline,
                                color: Colors.pink.shade300,
                              ),
                            ),
                            Icon(
                              Icons.download,
                              color: Colors.pink.shade300,
                              size: 20,
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
                              Icons.download,
                              size: 15,
                            ),
                            Text(
                              "Downloaded: 20 | ",
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
        Row(
          children: [
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.green.shade400,
              child: Image.asset(
                "assets/image-79-RTQ.png",
                width: 16,
                height: 16,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: Container(
                margin:
                    EdgeInsets.fromLTRB(10 * fem, 0 * fem, 100 * fem, 0 * fem),
                padding:
                    EdgeInsets.fromLTRB(11 * fem, 4 * fem, 15 * fem, 3 * fem),
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
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, top: 5),
          child: SizedBox(
            width: 170,
            height: 36,
            child: Container(
              // width: 155.5 * fem,
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
                  "From Class Teacher ",
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
                  const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.65,
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
                            CircleAvatar(
                                backgroundColor: Colors.green.shade400,
                                child: const Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                  size: 38,
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/6622/6622004.png",
                              height: 50,
                              color: Colors.green.shade400,
                            ),
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/6622/6622004.png",
                              height: 50,
                              color: Colors.green.shade400,
                            ),
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/512/6622/6622004.png",
                              height: 50,
                              color: Colors.green.shade400,
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
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Icon(
                              Icons.hearing,
                              size: 15,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              "Linstned: 35",
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
        Row(
          children: [
            Image.asset(
              'assets/group-36-6bC.png',
              height: 27,
              width: 27,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 5),
              child: SizedBox(
                width: 200,
                height: 24,
                child: Container(
                  // width: 155.5 * fem,

                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                      topLeft: Radius.circular(25),
                    ),
                    image: const DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage(
                        'assets/rectangle-7-jc6.png',
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
                      "Prakash Science Teacher ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5),
          child: SizedBox(
            width: 200,
            height: 30,
            child: Container(
              // width: 155.5 * fem,
              height: 25,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/rectangle-7-jc6.png',
                  ),
                ),
              ),
              child: const Center(
                child: Text(
                  "From Science Teacher ",
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
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade900),
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
                            const Icon(
                              Icons.link,
                              color: Colors.grey,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "http://vimeo.com./0000000000",
                              textAlign: TextAlign.start,
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.info_outline,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              width: 200,
                              child: Text(
                                "This video shows how the moon got formed .A recent model from NASA",
                                textAlign: TextAlign.start,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125 * ffem / fem,
                                  color: Colors.black,
                                ),
                              ),
                            )
                          ],
                        ),
                        // Text(
                        //   "Upcoming month november 2022, we have decided to mark all saturday as working days in order to compensatate the rain holidays which we had in october 2022",
                        //   textAlign: TextAlign.start,
                        //   style: SafeGoogleFont(
                        //     'Inter',
                        //     fontSize: 16 * ffem,
                        //     fontWeight: FontWeight.w500,
                        //     height: 1.2125 * ffem / fem,
                        //     color: Colors.black,
                        //   ),
                        // ),
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
        VisiblityWidget(visible: data.visibility)
      ],
    );
  }
}
