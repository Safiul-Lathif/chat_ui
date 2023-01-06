import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
        ),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.blue.shade50,
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.blue.withOpacity(0.3), BlendMode.dstATop),
              image: const AssetImage("assets/bg_image.png"),
              fit: BoxFit.fill,
            )),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "web.timetoschool.com",
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade900),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset('assets/qr.png'),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.only(left: 30, right: 25, top: 40),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.506,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.blue.withOpacity(0.3), BlendMode.dstATop),
                  image: const AssetImage("assets/bg_image.png"),
                  fit: BoxFit.fill,
                ),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.elliptical(600.0, 85.0),
                    topRight: Radius.circular(35.0)),
              ),
              child: Column(
                children: [
                  Text(
                    "Hello there! to enjoy web interface of TimeToSchool Lite, scan the below Scanner from your TimeToSchool APP on your device.",
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade800),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Note:",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Text(
                    " 1. There are more web specfic features avilable for staff and management.",
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade800),
                  ),
                  Text(
                    " 2. Session will expire in 2 hours for privacy and security reasons",
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade800),
                  ),
                  Text(
                    "3. Each time, you will have to scan the device for security reasons",
                    style: TextStyle(fontSize: 15, color: Colors.grey.shade800),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.network(
                    "https://cdn-icons-png.flaticon.com/512/3126/3126571.png",
                    height: 120,
                    color: Colors.blue.shade800,
                    width: 120,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
