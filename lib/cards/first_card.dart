import 'package:chat_ui/models/news_feed_model.dart';
import 'package:chat_ui/miscellaneous.dart';
import 'package:chat_ui/widgets/time_widget.dart';
import 'package:chat_ui/widgets/visiblity_widget.dart';
import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({super.key, required this.data, required this.itemIndex});
  final NewsFeedList data;
  final int itemIndex;

  @override
  Widget build(BuildContext context) =>
      OrientationBuilder(builder: (context, orientation) {
        double baseWidth = 414;
        double fem = MediaQuery.of(context).size.width / baseWidth;
        double ffem = fem * 0.97;
        return GestureDetector(
          onLongPress: () {},
          child: Align(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5, top: 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 25,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const TimeWiget(),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                topLeft: Radius.circular(15))),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            data.title,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: const Color(0xff620d00),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                VisiblityWidget(visible: data.visibility),
              ],
            ),
          ),
        );
      });
}
