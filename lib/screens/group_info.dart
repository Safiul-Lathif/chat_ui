import 'package:chat_ui/forms/add_edit_form.dart';
import 'package:chat_ui/forms/edit_forn.dart';
import 'package:flutter/material.dart';
import '../miscellaneous.dart';

class GroupInfo extends StatefulWidget {
  GroupInfo({required this.grpName, super.key});
  String grpName;

  @override
  State<GroupInfo> createState() => _GroupInfoState();
}

class _GroupInfoState extends State<GroupInfo> {
  bool isChecked = false;
  List<String> name = [
    "Prakash",
    "Easwar",
    "Aswin",
    "Sudesrsan",
    "Sundar",
    "Safi",
    "Varthan",
    "Roja",
    "Praveen",
    "Ram",
    "Lingesh",
    "Suresh"
  ];
  List<String> number = [
    "7837387443",
    "7773427847",
    "9853648200",
    "9876652425",
    "6436829200",
    "8773652627",
    "8736372727",
    "7282828828",
    "9877655432",
    "9737363636",
    "9827727373",
    "9287277277"
  ];
  List<int> _selectedItems = [];
  bool isDelte = false;

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                widget.grpName,
              ),
              centerTitle: true,
              background: Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey.shade500,
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.blue.withOpacity(0.2), BlendMode.dstATop),
                      image: const NetworkImage(
                          "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.black,
                      backgroundImage: NetworkImage(
                          "https://img.freepik.com/free-vector/teacher-showing-correct-answer-phone-children-class-group-cartoon-girls-boys-using-tablets-laptops-table-classroom-flat-vector-illustration-education-technology-concept_74855-22049.jpg?w=2000"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Members",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "12",
                          softWrap: true,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            backgroundColor: Colors.blueGrey.shade500,
            pinned: true,
            floating: false,
            expandedHeight: 200,
            actions: [
              Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: _selectedItems.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.delete_rounded),
                          onPressed: () {
                            showDialogFunc(
                                context, _selectedItems.length.toString());
                          },
                        )
                      : IconButton(
                          icon: const Icon(
                            Icons.delete_rounded,
                            color: Colors.transparent,
                          ),
                          onPressed: () {},
                        ))
            ],
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 6, bottom: 6),
                  child: Text(
                    "All Participants",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 6, bottom: 6, right: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddEditForm(
                                  name: '',
                                  isEdit: false,
                                )),
                      );
                    },
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/747/747968.png',
                      height: 25,
                      width: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Next, create a SliverList
          SliverList(
            // Use a delegate to build items as they're scrolled on screen.
            delegate: SliverChildBuilderDelegate(
              // The builder function returns a ListTile with a title that
              // displays the index of the current item.
              (context, index) => ListTile(
                leading: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditForm(
                                name: name[index],
                              )),
                    );
                  },
                  child: const CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/512/3177/3177440.png',
                    ),
                  ),
                ),
                title: Text(name[index]),
                onLongPress: () {
                  if (!_selectedItems.contains(index)) {
                    setState(() {
                      _selectedItems.add(index);
                    });
                  }
                },
                onTap: () {
                  if (_selectedItems.isNotEmpty) {
                    if (_selectedItems.contains(index)) {
                      setState(() {
                        _selectedItems.removeWhere((val) => val == index);
                      });
                    } else {
                      setState(() {
                        _selectedItems.add(index);
                      });
                    }
                  }
                },
                // trailing: Checkbox(
                //   value: isChecked,
                //   onChanged: (value) {
                //     setState(() {
                //       isChecked = value!;
                //     });
                //   },
                // ),
                trailing: (_selectedItems.contains(index))
                    ? const Icon(
                        Icons.check_circle,
                        color: Colors.blue,
                      )
                    : const Icon(
                        Icons.check,
                        color: Colors.transparent,
                      ),
                subtitle: Text(number[index]),
              ),
              childCount: name.length,
              // Builds 1000 ListTiles
            ),
          ),
        ],
      ),
      // body: SingleChildScrollView(
      //   child: Container(
      //     color: Colors.blueGrey.shade350,
      //     child: Column(children: [
      //       const SizedBox(
      //         height: 60,
      //       ),
      //       Center(
      //           child: Text("Group Info",
      //               style: SafeGoogleFont(
      //                 'Inter',
      //                 fontSize: 21 * ffem,
      //                 fontWeight: FontWeight.w500,
      //                 height: 0.9152272542 * ffem / fem,
      //                 letterSpacing: 1.4 * fem,
      //                 color: const Color(0xff575757),
      //               ))),
      //       Padding(
      //         padding: const EdgeInsets.only(top: 10, bottom: 10),
      //         child: Container(
      //           width: double.maxFinite,
      //           decoration: const BoxDecoration(
      //               gradient: LinearGradient(colors: [
      //             Colors.transparent,
      //             Colors.transparent,
      //             Colors.blueGrey,
      //             Colors.blueGrey,
      //             Colors.transparent,
      //             Colors.transparent
      //           ])),
      //           height: 0.3,
      //         ),
      //       ),
      //       Row(
      //         children: [
      //           Padding(
      //             padding: const EdgeInsets.all(20.0),
      //             child: Align(
      //               alignment: Alignment.topLeft,
      //               child: Image.network(
      //                 'https://cdn-icons-png.flaticon.com/512/143/143438.png',
      //                 width: 88.28 * fem,
      //                 height: 81 * fem,
      //               ),
      //             ),
      //           ),
      //           Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: const [
      //               Text(
      //                 "LKG - A  Group",
      //                 style: TextStyle(
      //                     color: Color(0xff575757),
      //                     fontSize: 15,
      //                     fontWeight: FontWeight.bold),
      //               ),
      //               SizedBox(
      //                 width: 200,
      //                 child: Text(
      //                   "This group includes the class teachers and parents from LKG - A class ...",
      //                   maxLines: 2,
      //                   style: TextStyle(
      //                       color: Color(0xff575757),
      //                       fontSize: 15,
      //                       fontWeight: FontWeight.w300),
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: 5,
      //               ),
      //               Text(
      //                 "Members",
      //                 style: TextStyle(
      //                     color: Color(0xff575757),
      //                     fontSize: 15,
      //                     fontWeight: FontWeight.bold),
      //               ),
      //               SizedBox(
      //                 height: 2,
      //               ),
      //               Text(
      //                 "12",
      //                 softWrap: true,
      //                 style: TextStyle(
      //                   color: Color(0xff575757),
      //                   fontSize: 15,
      //                 ),
      //               )
      //             ],
      //           ),
      //         ],
      //       ),
      //       const SizedBox(
      //         height: 10,
      //       ),
      //       Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //           color: Colors.transparent,
      //         ),
      //         padding: const EdgeInsets.only(top: 10),
      //         height: MediaQuery.of(context).size.height * 0.79,
      //         child: Container(
      //           decoration: BoxDecoration(
      //               color: Colors.blue.shade50,
      //               image: DecorationImage(
      //                 colorFilter: ColorFilter.mode(
      //                     Colors.blue.withOpacity(0.2), BlendMode.dstATop),
      //                 image: const NetworkImage(
      //                     "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
      //                 fit: BoxFit.fill,
      //               ),
      //               borderRadius: const BorderRadius.only(
      //                   topRight: Radius.circular(25),
      //                   topLeft: Radius.circular(25))),
      //           child: Padding(
      //             padding: const EdgeInsets.only(left: 10, top: 10),
      //             child: Column(
      //               children: [
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     const Padding(
      //                       padding:
      //                           EdgeInsets.only(left: 12, top: 6, bottom: 6),
      //                       child: Text(
      //                         "All Participants",
      //                         style: TextStyle(
      //                             fontWeight: FontWeight.bold, fontSize: 15),
      //                       ),
      //                     ),
      //                     Padding(
      //                       padding: const EdgeInsets.only(right: 20),
      //                       child: GestureDetector(
      //                         onTap: () {
      //                           Navigator.push(
      //                             context,
      //                             MaterialPageRoute(
      //                                 builder: (context) => AddEditForm(
      //                                       name: '',
      //                                       isEdit: false,
      //                                     )),
      //                           );
      //                         },
      //                         child: Image.network(
      //                           'https://cdn-icons-png.flaticon.com/512/747/747968.png',
      //                           height: 30,
      //                           width: 30,
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //                 Padding(
      //                   padding: const EdgeInsets.only(top: 10, bottom: 10),
      //                   child: Container(
      //                     width: double.maxFinite,
      //                     decoration: const BoxDecoration(
      //                         gradient: LinearGradient(colors: [
      //                       Colors.blueGrey,
      //                       Colors.blueGrey,
      //                     ])),
      //                     height: 0.3,
      //                   ),
      //                 ),
      //                 SizedBox(
      //                   height: 450,
      //                   child: MediaQuery.removePadding(
      //                     context: context,
      //                     removeTop: true,
      //                     child: ListView.builder(
      //                       itemCount: 12,
      //                       shrinkWrap: true,
      //                       itemBuilder: (context, index) {
      //                         return ListTile(
      //                           leading: Image.network(
      //                             "https://cdn-icons-png.flaticon.com/512/456/456141.png",
      //                             height: 30,
      //                             width: 30,
      //                           ),
      //                           title: Text(name[index]),
      //                           trailing: Checkbox(
      //                             value: isChecked,
      //                             onChanged: (value) {
      //                               setState(() {
      //                                 isChecked = value!;
      //                               });
      //                             },
      //                           ),
      //                           onTap: () {
      //                             Navigator.push(
      //                               context,
      //                               MaterialPageRoute(
      //                                   builder: (context) => AddEditForm(
      //                                         name: name[index],
      //                                         isEdit: true,
      //                                       )),
      //                             );
      //                           },
      //                         );
      //                       },
      //                     ),
      //                   ),
      //                 ),
      //                 ElevatedButton(
      //                     style: ButtonStyle(
      //                         backgroundColor: MaterialStateProperty.all(
      //                             Colors.blueGrey.shade400)),
      //                     onPressed: () {},
      //                     child: const Text("Show All"))
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ]),
      //   ),
      // ),
    );
  }
}

showDialogFunc(
  context,
  String name,
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
                    color: Colors.transparent,
                  ),
                  padding: const EdgeInsets.all(15),
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.blue.withOpacity(0.2), BlendMode.dstATop),
                          image: const NetworkImage(
                              "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Do you sure want to delete $name Contacts",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 15),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.redAccent)),
                                    onPressed: () {},
                                    child: const Text("Cancel")),
                                ElevatedButton(
                                    onPressed: () {}, child: Text("Okay"))
                              ],
                            )
                          ],
                        ),
                      ))),
            ],
          ),
        ),
      );
    },
  );
}
