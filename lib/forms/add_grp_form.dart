import 'package:chat_ui/widgets/main_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AddGroup extends StatefulWidget {
  const AddGroup({super.key});

  @override
  State<AddGroup> createState() => _AddGroupState();
}

class _AddGroupState extends State<AddGroup> {
  List<int> _selectedItems = [];
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create New Group"),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            color: Colors.blue.shade50,
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.blue.withOpacity(0.3), BlendMode.dstATop),
              image: const NetworkImage(
                  "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
              fit: BoxFit.fill,
            )),
        child: SingleChildScrollView(
          child: Form(
              child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              children: [
                FormBuilderTextField(
                  keyboardType: TextInputType.name,
                  name: "",
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Group Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 15,
                ),
                FormBuilderTextField(
                  keyboardType: TextInputType.name,
                  name: "",
                  maxLines: 2,
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Group Description',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 15,
                ),
                DefaultTabController(
                    length: 3,
                    initialIndex: 0,
                    child: Column(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            // left: 20,
                            // right: 20,
                            ),
                        child: Container(
                          height: 40,
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
                            tabs: const [
                              Tab(
                                child: Text(
                                  "Management",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Teaching Staffs",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "N/T Staff",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black),
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
                          height: 400,
                          child: TabBarView(children: [
                            MediaQuery.removePadding(
                              context: context,
                              removeTop: true,
                              child: SizedBox(
                                height: 350,
                                child: ListView.builder(
                                  itemCount: 12,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      leading: Image.network(
                                        "https://cdn-icons-png.flaticon.com/512/456/456141.png",
                                        height: !_selectedItems.contains(index)
                                            ? 30
                                            : 35,
                                        width: !_selectedItems.contains(index)
                                            ? 30
                                            : 35,
                                      ),
                                      title: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            name[index],
                                            style: TextStyle(
                                                fontWeight: _selectedItems
                                                        .contains(index)
                                                    ? FontWeight.bold
                                                    : FontWeight.normal),
                                          ),
                                          _selectedItems.contains(index)
                                              ? const Icon(
                                                  Icons.check_box,
                                                  color: Colors.green,
                                                )
                                              : const Icon(
                                                  Icons.check_box,
                                                  color: Colors.transparent,
                                                )
                                        ],
                                      ),
                                      onLongPress: () {
                                        if (!_selectedItems.contains(index)) {
                                          setState(() {
                                            _selectedItems.add(index);
                                          });
                                        }
                                      },
                                      onTap: () {
                                        if (_selectedItems.contains(index)) {
                                          setState(() {
                                            _selectedItems.removeWhere(
                                                (val) => val == index);
                                          });
                                        } else {
                                          setState(() {
                                            _selectedItems.add(index);
                                          });
                                        }
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            MediaQuery.removePadding(
                              context: context,
                              removeTop: true,
                              child: ListView.builder(
                                itemCount: 12,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Container(
                                    color: (_selectedItems.contains(index))
                                        ? Colors.blue.withOpacity(0.3)
                                        : Colors.transparent,
                                    child: ListTile(
                                      leading: Image.network(
                                        "https://cdn-icons-png.flaticon.com/512/456/456141.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                      title: Text(name[index]),
                                      trailing: (_selectedItems.contains(index))
                                          ? const Icon(
                                              Icons.check_circle,
                                              color: Colors.blue,
                                            )
                                          : const Icon(
                                              Icons.check,
                                              color: Colors.transparent,
                                            ),
                                      onLongPress: () {
                                        if (!_selectedItems.contains(index)) {
                                          setState(() {
                                            _selectedItems.add(index);
                                          });
                                        }
                                      },
                                      onTap: () {
                                        if (_selectedItems.contains(index)) {
                                          setState(() {
                                            _selectedItems.removeWhere(
                                                (val) => val == index);
                                          });
                                        } else {
                                          setState(() {
                                            _selectedItems.add(index);
                                          });
                                        }
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                            MediaQuery.removePadding(
                              context: context,
                              removeTop: true,
                              child: ListView.builder(
                                itemCount: 12,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Container(
                                    color: (_selectedItems.contains(index))
                                        ? Colors.blue.withOpacity(0.3)
                                        : Colors.transparent,
                                    child: ListTile(
                                      leading: Image.network(
                                        "https://cdn-icons-png.flaticon.com/512/456/456141.png",
                                        height: 30,
                                        width: 30,
                                      ),
                                      title: Text(name[index]),
                                      trailing: (_selectedItems.contains(index))
                                          ? const Icon(
                                              Icons.check_circle,
                                              color: Colors.blue,
                                            )
                                          : const Icon(
                                              Icons.check,
                                              color: Colors.transparent,
                                            ),
                                      onLongPress: () {
                                        if (!_selectedItems.contains(index)) {
                                          setState(() {
                                            _selectedItems.add(index);
                                          });
                                        }
                                      },
                                      onTap: () {
                                        if (_selectedItems.contains(index)) {
                                          setState(() {
                                            _selectedItems.removeWhere(
                                                (val) => val == index);
                                          });
                                        } else {
                                          setState(() {
                                            _selectedItems.add(index);
                                          });
                                        }
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                          ]))
                    ])),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Create"))
              ],
            ),
          )),
        ),
      ),
    );
  }
}
