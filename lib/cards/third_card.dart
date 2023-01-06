// ignore_for_file: file_names
import 'package:chat_ui/models/news_feed_model.dart';
import 'package:chat_ui/widgets/time_widget.dart';
import 'package:chat_ui/widgets/visiblity_widget.dart';
import 'package:flutter/material.dart';

class ThirdCard extends StatelessWidget {
  const ThirdCard({super.key, required this.data, required this.itemIndex});
  final NewsFeedList data;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
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
                        colors: [Colors.pink.shade400, Colors.pink.shade200],
                        begin: Alignment.topLeft,
                        end: Alignment.centerRight),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          data.teacher,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 2,
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink),
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(20),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialogFunc(
                                  context, data.imagelink, data.subtitle);
                            },
                            child: Hero(
                              tag: data.imagelink,
                              child: Image(
                                  height: 150,
                                  width: 243,
                                  image: NetworkImage(data.imagelink)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              const Image(
                                  height: 35,
                                  width: 35,
                                  image: NetworkImage(
                                      "https://cdn-icons-png.flaticon.com/512/5968/5968746.png")),
                              const SizedBox(
                                width: 10,
                              ),
                              Flexible(
                                child: Text(
                                  data.subtitle,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const TimeWiget()
              ],
            ),
            Container(
                margin: EdgeInsets.fromLTRB(0, 0 * fem, 130 * fem, 0),
                child: VisiblityWidget(visible: data.visibility)),
          ],
        ),
      ),
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
                height: MediaQuery.of(context).size.height * 0.4,
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


// showDialogFunc(context, String img, String text) {
//   return showDialog(
//     context: context,
//     builder: (context) {
//       return Center(
//         child: Material(
//           type: MaterialType.transparency,
//           child: Stack(
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 padding: const EdgeInsets.all(15),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       color: Colors.blue.shade50,
//                       borderRadius: BorderRadius.circular(10),
//                       image: DecorationImage(
//                         colorFilter: ColorFilter.mode(
//                             Colors.blue.withOpacity(0.3), BlendMode.dstATop),
//                         image: const NetworkImage(
//                             "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
//                         fit: BoxFit.fill,
//                       )),
//                   padding: const EdgeInsets.all(15),
//                   height: MediaQuery.of(context).size.height * 0.3,
//                   width: MediaQuery.of(context).size.width * 0.7,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: <Widget>[
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(5),
//                         child: Center(
//                             child: Column(
//                           children: [
//                             Image(
//                                 image: NetworkImage(img),
//                                 fit: BoxFit.cover,
//                                 width: 1000.0),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             Text(
//                               text,
//                               textAlign: TextAlign.center,
//                             )
//                           ],
//                         )),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Positioned(
//                 left: 242,
//                 bottom: 230,
//                 child: IconButton(
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                     icon: const CircleAvatar(
//                       radius: 12,
//                       backgroundColor: Colors.white,
//                       child: Icon(
//                         Icons.cancel_outlined,
//                         color: Colors.black,
//                       ),
//                     )),
//               )
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }
