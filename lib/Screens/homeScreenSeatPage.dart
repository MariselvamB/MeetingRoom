// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:meedingroom/Screens/SignIn_Page_1.dart';
import 'package:meedingroom/Screens/SignIn_Page_2.dart';
import 'package:meedingroom/main.dart';

class homeScreenSeatPage extends StatefulWidget {
  const homeScreenSeatPage({super.key});

  @override
  State<homeScreenSeatPage> createState() => _homeScreenSeatPageState();
}

class _homeScreenSeatPageState extends State<homeScreenSeatPage> {
  DateTime dateTime = DateTime.now();
  TextEditingController SelectController = TextEditingController();

  String formattedDate = DateFormat().add_jm().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "Assets/homeScreenImage.png",
          fit: BoxFit.fill,
        ),
        Positioned(
          right: 115,
          top: 137,
          child: Container(
            alignment: Alignment.center,
            padding:
                const EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 20),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(41, 64, 39, 1),
              boxShadow: const [BoxShadow(blurRadius: 5)],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 1,
                color: const Color.fromRGBO(14, 125, 0, 0.97),
              ),
            ),
            child: Text(
              formattedDate,
              style: const TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Lato',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: 48,
                  letterSpacing: 0.5,
                  color: Color.fromARGB(255, 242, 243, 242)),
            ),
          ),
        ),
        Positioned(
          left: 104,
          top: 259,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignInDualPage_Page(
                            title: '',
                          )));
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                  top: 20, left: 30, right: 30, bottom: 20),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(41, 64, 39, 1),
                boxShadow: const [BoxShadow(blurRadius: 5)],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: const Color.fromRGBO(14, 125, 0, 0.97),
                ),
              ),
              child: const Text(
                "Hot Desking",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Lato',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 48,
                    letterSpacing: 0.5,
                    color: Color.fromARGB(255, 242, 243, 242)),
              ),
            ),
          ),
        ),
        Positioned(
          left: 155,
          top: 395,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                  top: 20, left: 15, bottom: 15, right: 20),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(41, 64, 39, 1),
                boxShadow: const [BoxShadow(blurRadius: 5)],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: const Color.fromRGBO(14, 125, 0, 0.97),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 30),
                    child: Text(
                      "Room Amenities",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Montserrat',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 21,
                        letterSpacing: 0.5,
                        color: Color.fromRGBO(242, 243, 242, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 30, right: 20),
                    child: Row(
                      children: const [
                        Icon(Icons.check_circle_rounded,
                            size: 13, color: Color.fromRGBO(209, 71, 81, 1)),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Meeting Amenties",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Lato',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                letterSpacing: 1,
                                color: Color.fromRGBO(242, 243, 242, 1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 30, right: 20),
                    child: Row(
                      children: const [
                        Icon(Icons.check_circle_rounded,
                            size: 13, color: Color.fromRGBO(209, 71, 81, 1)),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Projecter",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Lato',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                letterSpacing: 1,
                                color: Color.fromRGBO(242, 243, 242, 1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 30, right: 20, bottom: 20),
                    child: Row(
                      children: const [
                        Icon(Icons.check_circle_rounded,
                            size: 13, color: Color.fromRGBO(209, 71, 81, 1)),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            "Available (if any)",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Lato',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                letterSpacing: 1,
                                color: Color.fromRGBO(242, 243, 242, 1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 115,
          bottom: 50,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignIn_Page(
                            title: '',
                          )));
            },
            child: Container(
              alignment: Alignment.center,
              padding:
                  const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(41, 64, 39, 1),
                boxShadow: const [BoxShadow(blurRadius: 5)],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: const Color.fromRGBO(14, 125, 0, 0.97),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 25, left: 25),
                child: Row(
                  children: const [
                    Text(
                      "Select A Seat",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Lato',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 48,
                          letterSpacing: 1,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 25),
                      child: Icon(Icons.play_arrow,
                          size: 40, color: Color.fromARGB(255, 255, 255, 255)),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
