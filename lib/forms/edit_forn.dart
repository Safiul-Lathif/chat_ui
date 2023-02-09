import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class EditForm extends StatefulWidget {
  EditForm({super.key, required this.name});
  String name;
  @override
  State<EditForm> createState() => _EditFormState();
}

class _EditFormState extends State<EditForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.blue.withOpacity(0.2), BlendMode.dstATop),
            image: const NetworkImage(
                "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.only(bottom: 60),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.blue.withOpacity(0.2),
                                BlendMode.dstATop),
                            image: const NetworkImage(
                                "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(25),
                              topLeft: Radius.circular(25))),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: ListTile(
                          title: Row(
                            children: [
                              Text(
                                widget.name,
                                style: const TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  showDialogFunc(
                                      context,
                                      'https://media.istockphoto.com/id/1399611777/photo/portrait-of-a-smiling-little-brown-haired-boy-looking-at-the-camera-happy-kid-with-good.jpg?b=1&s=170667a&w=0&k=20&c=_vhKiD4p9X8X5BBJ5gKiWasG95XFvwVa8nq6Ogbpn9k=',
                                      widget.name);
                                },
                                child: const Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              )
                            ],
                          ),
                          subtitle: const Text(
                            "DTDFWW56W3563",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 25,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.5),
                              offset: const Offset(3, 2),
                              blurRadius: 7)
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 65,
                        backgroundImage: NetworkImage(
                            'https://media.istockphoto.com/id/1399611777/photo/portrait-of-a-smiling-little-brown-haired-boy-looking-at-the-camera-happy-kid-with-good.jpg?b=1&s=170667a&w=0&k=20&c=_vhKiD4p9X8X5BBJ5gKiWasG95XFvwVa8nq6Ogbpn9k='),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.65,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // const SizedBox(
                      //   height: 20,
                      // ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 18, right: 20, bottom: 100),
                            child: Container(
                              height: 60,
                              padding:
                                  const EdgeInsets.only(left: 20, bottom: 20),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade400,
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.blue.withOpacity(0.2),
                                        BlendMode.dstATop),
                                    image: const NetworkImage(
                                        "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(.5),
                                        offset: const Offset(3, 2),
                                        blurRadius: 7)
                                  ],
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    topLeft: Radius.circular(25),
                                  )),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Fathers Details",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        showDialogFunctions(
                                            context,
                                            'Aswin Kumar',
                                            '9863452678',
                                            'aswin@gmail.com',
                                            'Fathers',
                                            'https://media.istockphoto.com/id/1270067126/photo/smiling-indian-man-looking-at-camera.jpg?s=612x612&w=0&k=20&c=ovIQ5GPurLd3mOUj82jB9v-bjGZ8updgy1ACaHMeEC0=');
                                      },
                                      icon: const Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 15, bottom: 15, left: 10, right: 20),
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    image: DecorationImage(
                                      colorFilter: ColorFilter.mode(
                                          Colors.blue.withOpacity(0.2),
                                          BlendMode.dstATop),
                                      image: const NetworkImage(
                                          "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                      fit: BoxFit.fill,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(.5),
                                          offset: const Offset(3, 2),
                                          blurRadius: 7)
                                    ],
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(25),
                                        topLeft: Radius.circular(25),
                                        bottomLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      width: 100,
                                      child: CircleAvatar(
                                        radius: 39,
                                        backgroundImage: NetworkImage(
                                            'https://media.istockphoto.com/id/1270067126/photo/smiling-indian-man-looking-at-camera.jpg?s=612x612&w=0&k=20&c=ovIQ5GPurLd3mOUj82jB9v-bjGZ8updgy1ACaHMeEC0='),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.person,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text("Aswin Kumar",
                                                style: TextStyle(
                                                    color: Color(0xff575757),
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.phone,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text("9863452678",
                                                style: TextStyle(
                                                    color: Color(0xff575757),
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.email,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text("aswinkumar@gmail.com",
                                                style: TextStyle(
                                                    color: Color(0xff575757),
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 18, right: 20, bottom: 100),
                            child: Container(
                              height: 60,
                              padding:
                                  const EdgeInsets.only(left: 20, bottom: 20),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade400,
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.blue.withOpacity(0.2),
                                        BlendMode.dstATop),
                                    image: const NetworkImage(
                                        "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(.5),
                                        offset: const Offset(3, 2),
                                        blurRadius: 7)
                                  ],
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    topLeft: Radius.circular(25),
                                  )),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Mothers Details",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        showDialogFunctions(
                                            context,
                                            'Roja Sri',
                                            '7896543218',
                                            'roja@gmail.com',
                                            'Mothers',
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH1EkMEUe3JO_iU66ftzlVEe4-f_fG0WQNfw&usqp=CAU');
                                      },
                                      icon: const Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 15, bottom: 15, left: 15, right: 20),
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    image: DecorationImage(
                                      colorFilter: ColorFilter.mode(
                                          Colors.blue.withOpacity(0.2),
                                          BlendMode.dstATop),
                                      image: const NetworkImage(
                                          "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                      fit: BoxFit.fill,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(.5),
                                          offset: const Offset(3, 2),
                                          blurRadius: 7)
                                    ],
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(25),
                                        topLeft: Radius.circular(25),
                                        bottomLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      width: 100,
                                      child: CircleAvatar(
                                        radius: 39,
                                        backgroundImage: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH1EkMEUe3JO_iU66ftzlVEe4-f_fG0WQNfw&usqp=CAU'),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.person,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text("Roja Sri",
                                                style: TextStyle(
                                                    color: Color(0xff575757),
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.phone,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text("7896543218",
                                                style: TextStyle(
                                                    color: Color(0xff575757),
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.email,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text("rojasri1267@gmail.com",
                                                style: TextStyle(
                                                    color: Color(0xff575757),
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 18, right: 20, bottom: 100),
                            child: Container(
                              height: 60,
                              padding:
                                  const EdgeInsets.only(left: 20, bottom: 20),
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade400,
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                        Colors.blue.withOpacity(0.2),
                                        BlendMode.dstATop),
                                    image: const NetworkImage(
                                        "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(.5),
                                        offset: const Offset(3, 2),
                                        blurRadius: 7)
                                  ],
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    topLeft: Radius.circular(25),
                                  )),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Guardians Details",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 16),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        showDialogFunctions(
                                            context,
                                            'Dinesh Karthik',
                                            '65467980257',
                                            'dinesh@gmail.com',
                                            'Fathers',
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5qc_t9z5eRfoyHgN2O8BOCahtrze71pyi5A&usqp=CAU');
                                      },
                                      icon: const Icon(
                                        Icons.edit,
                                        color: Colors.white,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 0,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 15, bottom: 15, left: 10, right: 20),
                                decoration: BoxDecoration(
                                    color: Colors.blue.shade50,
                                    image: DecorationImage(
                                      colorFilter: ColorFilter.mode(
                                          Colors.blue.withOpacity(0.2),
                                          BlendMode.dstATop),
                                      image: const NetworkImage(
                                          "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                                      fit: BoxFit.fill,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.grey.withOpacity(.5),
                                          offset: const Offset(3, 2),
                                          blurRadius: 7)
                                    ],
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(25),
                                        topLeft: Radius.circular(25),
                                        bottomLeft: Radius.circular(25),
                                        bottomRight: Radius.circular(25))),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      width: 100,
                                      child: CircleAvatar(
                                        radius: 39,
                                        backgroundImage: NetworkImage(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5qc_t9z5eRfoyHgN2O8BOCahtrze71pyi5A&usqp=CAU'),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.person,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text("Dinesh Karthik",
                                                style: TextStyle(
                                                    color: Color(0xff575757),
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.phone,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text("65467980257",
                                                style: TextStyle(
                                                    color: Color(0xff575757),
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.email,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text("dineshkarthi@gmail.com",
                                                style: TextStyle(
                                                    color: Color(0xff575757),
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

showDialogFunc(context, String img, String text) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.transparent,
        scrollable: true,
        content: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            // padding: const EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                    image: const NetworkImage(
                        "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
                    fit: BoxFit.fill,
                  )),
              padding: const EdgeInsets.all(15),
              // height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(img),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    child: FormBuilderTextField(
                      name: "",
                      initialValue: text,
                      decoration: InputDecoration(
                        hintText: 'Name',
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.blueGrey.shade400)),
                      onPressed: () {},
                      child: const Text("Submit"))
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

showDialogFunctions(context, String name, String number, String email,
    String details, String img) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
          scrollable: true,
          title: Text('$details Details'),
          content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                child: Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(img),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: FormBuilderTextField(
                        name: "",
                        initialValue: name,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Name',
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: FormBuilderTextField(
                        name: "",
                        initialValue: number,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          hintText: 'Name',
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: FormBuilderTextField(
                        name: "",
                        initialValue: email,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Name',
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.blueGrey.shade400)),
                        onPressed: () {},
                        child: const Text("Submit"))
                  ],
                ),
              )));
    },
  );
}
