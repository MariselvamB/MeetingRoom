// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:meedingroom/Screens/LockersScreen.dart';
import 'package:meedingroom/Screens/homeScreenLockerPage.dart';
import 'package:meedingroom/Screens/homeScreenRoomPage.dart';
import 'package:meedingroom/Screens/Level_13_Page.dart';
import 'package:meedingroom/Screens/RoseRoom.dart';
import 'package:meedingroom/Screens/homeScreenSeatPage.dart';

import 'Screens/SignIn_Page_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            // LockersScreen()
            SignIn_Page(
          title: "",
        )
        //  homeScreenRoomPage(),
        //  homeScreenSeatPage()
        //homeScreenLockerPage()
        );
  }
}
