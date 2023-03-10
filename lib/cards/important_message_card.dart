import 'package:carousel_slider/carousel_slider.dart';
import 'package:chat_ui/models/news_feed_model.dart';
import 'package:chat_ui/miscellaneous.dart';
import 'package:chat_ui/widgets/school_admin.dart';
import 'package:chat_ui/widgets/time_widget.dart';
import 'package:chat_ui/widgets/visiblity_widget.dart';
import 'package:flutter/material.dart';

class ImportantMessageCard extends StatelessWidget {
  ImportantMessageCard(
      {super.key, required this.data, required this.itemIndex});
  final NewsFeedList data;
  final int itemIndex;
  List<String> images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZyyoQ9c9C0WZhiNYTAxmZgOoPVzFSKCNoOw&usqp=CAU",
    "https://thumbs.dreamstime.com/b/generic-high-school-building-20262841.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZyyoQ9c9C0WZhiNYTAxmZgOoPVzFSKCNoOw&usqp=CAU",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Hibbing_High_School_2014.jpg/1200px-Hibbing_High_School_2014.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/1/10/Mak%C3%B3_boarding_school_02.JPG",
    "https://content.jdmagicbox.com/comp/chennai/u9/044pxx44.xx44.180124145626.a9u9/catalogue/mount-litera-zee-school-omr-chennai-navalur-chennai-senior-secondary-schools-xknyuqwdwk.jpg?clr=",
    "https://thumbs.dreamstime.com/b/generic-high-school-building-facade-red-brick-american-bright-summer-day-77419843.jpg",
    "https://www.stcolumbas.edu.in/slider/Slider_01.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSF7Wg4MtQyPLelWBnMc-aTChpN0AmuH6PuqQ&usqp=CAU"
  ];

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                            GestureDetector(
                              onTap: () {
                                showDialogFunc(
                                  context,
                                  images,
                                );
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.3,
                                height:
                                    MediaQuery.of(context).size.height * 0.20,
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
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(images[index]),
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
                          height: 15,
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
          padding: const EdgeInsets.only(left: 5, top: 5),
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
          padding: const EdgeInsets.only(top: 5, left: 25),
          child: SizedBox(
            width: 170,
            height: 36,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/rectangle-7-fop.png',
                  ),
                ),
              ),
              child: const Center(
                child: Text(
                  " New meeting invite ",
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
                width: MediaQuery.of(context).size.width * 0.80,
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
                            SizedBox(
                              width: 90,
                              child: Wrap(
                                runSpacing: 10,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.sell_outlined,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Title",
                                        style: TextStyle(
                                            color: Colors.brown.shade800,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.category_outlined,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Category",
                                        style: TextStyle(
                                            color: Colors.brown.shade800,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.calendar_month,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Date",
                                        style: TextStyle(
                                            color: Colors.brown.shade800,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.supervised_user_circle,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Organizer",
                                        style: TextStyle(
                                            color: Colors.brown.shade800,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 1,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(colors: [
                                Colors.white,
                                Color(0xffcccccc),
                                Colors.white
                              ])),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Parent Teachers Meeting",
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "General",
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "22-Dec-2022",
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Mahesh",
                                  style: TextStyle(
                                      color: Colors.brown,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            )
                          ],
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
                          height: 6,
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
                                color: Colors.green,
                              ),
                            ),
                            const Icon(
                              Icons.info_outline,
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
                              "Watched: 20",
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

showDialogFunc(
  context,
  List img,
) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
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
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Center(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            CarouselSlider.builder(
                              itemCount: img.length,
                              itemBuilder: (BuildContext context, int itemIndex,
                                      int pageViewIndex) =>
                                  Image(
                                image: NetworkImage(img[itemIndex]),
                                fit: BoxFit.fill,
                                width: MediaQuery.of(context).size.width,
                              ),
                              options: CarouselOptions(
                                autoPlay: true,
                                enlargeCenterPage: true,
                                pauseAutoPlayOnTouch: true,
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
              //   left: 262,
              //   bottom: 190,
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
        ),
      );
    },
  );
}
