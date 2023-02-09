// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AddEditForm extends StatefulWidget {
  AddEditForm({super.key, required this.isEdit, required this.name});
  bool isEdit;
  String name;

  @override
  State<AddEditForm> createState() => _AddEditFormState();
}

class _AddEditFormState extends State<AddEditForm> {
  bool isGuardian = false;
  String index = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isEdit ? "Edit Student" : "Add Student"),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        decoration: BoxDecoration(
            color: Colors.blue.shade50,
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.blue.withOpacity(0.2), BlendMode.dstATop),
              image: const NetworkImage(
                  "https://i.pinimg.com/736x/8c/98/99/8c98994518b575bfd8c949e91d20548b.jpg"),
              fit: BoxFit.fill,
            ),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(25), topLeft: Radius.circular(25))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Colors.blueGrey.shade600, width: 2)),
                      child: Center(
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/512/747/747968.png",
                          cacheHeight: 80,
                          cacheWidth: 80,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: MediaQuery.of(context).size.height * 0.02,
                      right: MediaQuery.of(context).size.width * 0.14,
                      child: RawMaterialButton(
                        onPressed: () {},
                        elevation: 2.0,
                        fillColor: Colors.blueGrey.shade600,
                        shape: const CircleBorder(),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 25.0,
                        ),
                      )),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              FormBuilderTextField(
                keyboardType: TextInputType.name,
                name: "",
                initialValue: widget.isEdit ? widget.name : '',
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Student Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 15,
              ),
              FormBuilderTextField(
                name: "",
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Admission ID',
                  filled: true,
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
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Father Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 15,
              ),
              FormBuilderTextField(
                name: "",
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Father Mobile Number',
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                onTap: () async {
                  // await _contactPicker.selectContact();
                },
              ),
              const SizedBox(
                height: 15,
              ),
              FormBuilderTextField(
                name: "",
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Father email address',
                  filled: true,
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
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Mother Name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 15,
              ),
              FormBuilderTextField(
                name: "",
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Mother Mobile Number',
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 15,
              ),
              FormBuilderTextField(
                name: "",
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Mother email Address',
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Checkbox(
                      value: isGuardian,
                      activeColor: Colors.blueGrey.shade400,
                      onChanged: (value) {
                        setState(() {
                          isGuardian = value!;
                        });
                      }),
                  const Text("Guardian",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              if (isGuardian == true)
                FormBuilderTextField(
                  keyboardType: TextInputType.name,
                  name: "",
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Guardian Name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  onChanged: (value) {},
                ),
              if (isGuardian == true)
                const SizedBox(
                  height: 15,
                ),
              if (isGuardian == true)
                FormBuilderTextField(
                  name: "",
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: 'Guardian Mobile Number',
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  onChanged: (value) {},
                ),
              if (isGuardian == true)
                const SizedBox(
                  height: 15,
                ),
              if (isGuardian == true)
                FormBuilderTextField(
                  name: "",
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Guardian email Address',
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  onChanged: (value) {},
                ),
              if (isGuardian == true)
                const SizedBox(
                  height: 15,
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Radio(
                          value: 'Male',
                          groupValue: index,
                          onChanged: (newValue) {
                            setState(() {
                              index = newValue.toString();
                            });
                          }),
                      const Text('Boy')
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 'Female',
                          groupValue: index,
                          onChanged: (newValue) {
                            setState(() {
                              index = newValue.toString();
                            });
                          }),
                      const Text('Girl')
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueGrey.shade400)),
                  onPressed: () {},
                  child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
