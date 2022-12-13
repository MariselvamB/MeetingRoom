// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:intl/intl.dart';
import 'package:meedingroom/Models/sign_in/seat.api.json.dart';
import 'package:meedingroom/Screens/homeScreenRoomPage.dart';
import 'package:meedingroom/Screens/RoseRoom.dart';

class Level_13_Page extends StatefulWidget {
  const Level_13_Page({super.key});

  @override
  State<Level_13_Page> createState() => _Level_13_PageState();
}

class _Level_13_PageState extends State<Level_13_Page> {
  int slectedIndex = 0;

  List<chair> chairList = [
    chair(id: 0, icon: Icons.chair),
    chair(id: 1, icon: Icons.chair),
    chair(id: 2, icon: Icons.chair),
    chair(id: 3, icon: Icons.chair),
    chair(id: 4, icon: Icons.chair),
    chair(id: 5, icon: Icons.chair),
  ];
  DateTime? selectedStartDate;
  DateTime? selectedEndDate;
  DateTime? selectedStartTime;
  DateTime? selectedEndTime;
  final startDateController = TextEditingController();
  final endDateController = TextEditingController();
  final startTimeController = TextEditingController();
  final endTimeController = TextEditingController();

  // TimeOfDay selectedStartTime = TimeOfDay.now();
  // TimeOfDay selectedEndTime = TimeOfDay.now();
  String? _selectedStartTime;

  String? _selectedEndTime;
  late List<bool> isSelected;

  bool seleted = true;

  Future<void> _selectStartDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null && picked != selectedStartDate) {
      setState(() {
        selectedStartDate = picked;
      });
    }
  }

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedStartDate ?? DateTime.now(),
      firstDate: selectedStartDate ?? DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (picked != null && picked != selectedEndDate) {
      setState(() {
        selectedEndDate = picked;
      });
    }
  }

  Future<void> _selectStartTime() async {
    if (selectedStartDate != null) {
      showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return CupertinoDatePicker(
              use24hFormat: false,
              mode: CupertinoDatePickerMode.time,
              minimumDate: selectedStartDate,
              onDateTimeChanged: (DateTime value) {
                // set start time
                setState(() {
                  selectedEndTime = value;
                });
              });
        },
      );
    } else {
      Get.snackbar('Error', "Select Start Date",
          snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
    }
  }

  Future<void> _selectEndTime() async {
    final TimeOfDay? result = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (context, child) {
          return MediaQuery(
              data:
                  MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
              child: child!);
        });
    if (result != null) {
      setState(() {
        _selectedEndTime = result.format(context);
      });
    }
  }

  @override
  void initState() {
    isSelected = [true, false, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(
      children: [
        Container(
          color: const Color.fromARGB(255, 41, 41, 41),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 100, top: 81),
              child: Text(
                "Level 13",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 48,
                    letterSpacing: 1,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 26.5, left: 54, right: 54),
              child: Divider(
                height: 1.5,
                color: Color.fromRGBO(52, 146, 255, 0.3),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 108, top: 40),
              child: Text(
                "Floor 13",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  newShowDateTimeDialogMethod(context);
                },
                child: Image.asset(
                  "Assets/Map3level_3_1_Image.png",
                  scale: 1.2,
                  fit: BoxFit.fill,
                ),
              ),
            )
          ],
        )
      ],
    ));
  }

  Future<dynamic> newShowDateTimeDialogMethod(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            backgroundColor: const Color.fromRGBO(41, 41, 41, 1),
            shape: const RoundedRectangleBorder(
                side: BorderSide(
                    width: 1.0, color: Color.fromRGBO(52, 146, 255, 0.97)),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            title: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 1,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.clear,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: () => _selectStartDate(context),
                        child: Container(
                          height: 50,
                          width: 190,
                          decoration: BoxDecoration(
                            boxShadow: const [BoxShadow(blurRadius: 5)],
                            color: const Color.fromARGB(255, 41, 41, 41),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 52, 146, 255),
                            ),
                          ),
                          child: ListTile(
                            title: Text(
                              selectedStartDate != null
                                  ? DateFormat('dd-MM-yyyy')
                                      .format(selectedStartDate!)
                                  : 'Start Date',
                              style: const TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color.fromRGBO(242, 243, 242, 0.5)),
                            ),
                            trailing: const Icon(
                              Icons.date_range_outlined,
                              size: 20,
                              color: Color.fromRGBO(52, 146, 255, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: () => _selectEndDate(context),
                        child: Container(
                          height: 50,
                          width: 190,
                          decoration: BoxDecoration(
                            boxShadow: const [BoxShadow(blurRadius: 5)],
                            color: const Color.fromARGB(255, 41, 41, 41),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 52, 146, 255),
                            ),
                          ),
                          child: ListTile(
                            title: Text(
                              selectedEndDate != null
                                  ? DateFormat('dd-MM-yyyy')
                                      .format(selectedEndDate!)
                                  : 'End Date',
                              style: const TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Montserrat',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color.fromRGBO(242, 243, 242, 0.5)),
                            ),
                            trailing: const Icon(
                              Icons.date_range_outlined,
                              size: 20,
                              color: Color.fromRGBO(52, 146, 255, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: () => _selectStartTime(),
                        child: Container(
                          height: 50,
                          width: 190,
                          decoration: BoxDecoration(
                            boxShadow: const [BoxShadow(blurRadius: 5)],
                            color: const Color.fromARGB(255, 41, 41, 41),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 52, 146, 255),
                            ),
                          ),
                          child: ListTile(
                            title: Text(
                              _selectedStartTime != null
                                  ? _selectedStartTime!
                                  : 'start Time',
                              style: const TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Montserrat',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color.fromRGBO(242, 243, 242, 0.5)),
                            ),
                            trailing: const Icon(
                              Icons.arrow_drop_down,
                              size: 40,
                              color: Color.fromRGBO(52, 146, 255, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: () => _selectEndTime(),
                        child: Container(
                          height: 50,
                          width: 190,
                          decoration: BoxDecoration(
                            boxShadow: const [BoxShadow(blurRadius: 5)],
                            color: const Color.fromARGB(255, 41, 41, 41),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 52, 146, 255),
                            ),
                          ),
                          child: ListTile(
                            title: Text(
                              _selectedEndTime != null
                                  ? _selectedEndTime!
                                  : "End Time",
                              style: const TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Montserrat',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Color.fromRGBO(242, 243, 242, 0.5)),
                            ),
                            trailing: const Icon(
                              Icons.arrow_drop_down,
                              size: 40,
                              color: Color.fromRGBO(52, 146, 255, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 45, right: 45, top: 25, bottom: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      newShowSelecdSeatDialogMethod(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(74, 204, 142, 1),
                        boxShadow: const [BoxShadow(blurRadius: 5)],
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: const Color.fromRGBO(52, 146, 255, 1),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 60, right: 60, top: 10, bottom: 10),
                        child: Text("Confrom",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Montserrat',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                letterSpacing: 0.5,
                                color: Color.fromRGBO(242, 243, 242, 1))),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
      },
    );
  }

  Future<dynamic> newShowSelecdSeatDialogMethod(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return AlertDialog(
            backgroundColor: const Color.fromRGBO(41, 41, 41, 1),
            shape: const RoundedRectangleBorder(
                side: BorderSide(
                    width: 1.0, color: Color.fromRGBO(52, 146, 255, 0.97)),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            title: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 1,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.clear,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        )
                      ],
                    ),
                  ),
                  RotationTransition(
                    turns: const AlwaysStoppedAnimation(45 / 360),
                    child: Container(
                      margin: const EdgeInsets.only(right: 40, left: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 20, bottom: 20),
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(270 / 360),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() => seleted = !seleted);
                                      },
                                      child: Icon(Icons.chair,
                                          size: 40,
                                          color: seleted
                                              ? Colors.green
                                              : Color.fromRGBO(
                                                  234, 137, 59, 1)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 20, bottom: 20),
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(270 / 360),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() => seleted = !seleted);
                                      },
                                      child: Icon(
                                        Icons.chair,
                                        size: 40,
                                        color: seleted
                                            ? Colors.green
                                            : Color.fromRGBO(234, 137, 59, 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 20, bottom: 20),
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(270 / 360),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() => seleted = !seleted);
                                      },
                                      child: Icon(Icons.chair,
                                          size: 40,
                                          color: seleted
                                              ? Colors.green
                                              : Color.fromRGBO(
                                                  234, 137, 59, 1)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 220,
                            width: 80,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(230, 192, 87, 1),
                              boxShadow: const [BoxShadow(blurRadius: 5)],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                                color: const Color.fromRGBO(230, 192, 87, 1),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: 20, top: 20, bottom: 20),
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(90 / 360),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() => seleted = !seleted);
                                      },
                                      child: Icon(Icons.chair,
                                          size: 40,
                                          color: seleted
                                              ? Colors.green
                                              : Color.fromRGBO(
                                                  234, 137, 59, 1)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: 20, top: 20, bottom: 20),
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(90 / 360),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() => seleted = !seleted);
                                      },
                                      child: Icon(
                                        Icons.chair,
                                        size: 40,
                                        color: seleted
                                            ? Colors.green
                                            : Color.fromRGBO(234, 137, 59, 1),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: 20, top: 20, bottom: 20),
                                  child: RotationTransition(
                                    turns: AlwaysStoppedAnimation(90 / 360),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() => seleted = !seleted);
                                      },
                                      child: Icon(
                                        Icons.chair,
                                        size: 40,
                                        color: seleted
                                            ? Colors.green
                                            : Color.fromRGBO(234, 137, 59, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 50, bottom: 15),
                    child: Row(
                      children: [
                        Container(
                            width: 30,
                            height: 15,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(234, 137, 59, 1),
                              boxShadow: const [BoxShadow(blurRadius: 5)],
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                width: 0.2,
                                color: const Color.fromRGBO(242, 243, 242, 1),
                              ),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          child: Text(
                            "Requested",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Montserrat',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                letterSpacing: 0.5,
                                color: Color.fromRGBO(242, 243, 242, 1)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: Row(
                      children: [
                        Container(
                            width: 30,
                            height: 15,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(27, 75, 110, 1),
                              boxShadow: const [BoxShadow(blurRadius: 5)],
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                width: 0.2,
                                color: const Color.fromRGBO(242, 243, 242, 1),
                              ),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          child: Text(
                            "Occupied",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Montserrat',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                letterSpacing: 0.5,
                                color: Color.fromRGBO(242, 243, 242, 1)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: Row(
                      children: [
                        Container(
                            width: 30,
                            height: 15,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(209, 71, 81, 1),
                              boxShadow: const [BoxShadow(blurRadius: 5)],
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                width: 0.2,
                                color: const Color.fromRGBO(242, 243, 242, 1),
                              ),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          child: Text(
                            "Booked",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Montserrat',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                letterSpacing: 0.5,
                                color: Color.fromRGBO(242, 243, 242, 1)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 45, right: 45, top: 25, bottom: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        newShowBookingConformedDialogMethod(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(74, 204, 142, 1),
                          boxShadow: const [BoxShadow(blurRadius: 5)],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(52, 146, 255, 1),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              left: 60, right: 60, top: 10, bottom: 10),
                          child: Text(
                            "Confrom",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Montserrat',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                                fontSize: 17,
                                letterSpacing: 0.5,
                                color: Color.fromRGBO(242, 243, 242, 1)),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
      },
    );
  }

  Future<dynamic> newShowBookingConformedDialogMethod(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const homeScreenRoomPage()));
            },
            child: Container(
              color: Colors.transparent,
              child: AlertDialog(
                backgroundColor: const Color.fromRGBO(41, 41, 41, 1),
                shape: const RoundedRectangleBorder(
                    side: BorderSide(
                        width: 1.0, color: Color.fromRGBO(52, 146, 255, 0.97)),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                title: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 10, right: 10),
                          child: Container(
                              child: Image.asset("Assets/MailImage.png"))),
                      const Padding(
                        padding: EdgeInsets.only(
                            top: 10, bottom: 10, left: 10, right: 10),
                        child: Text(
                          "Booking Conformed",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Montserrat',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 29,
                              letterSpacing: 1,
                              color: Color.fromRGBO(126, 127, 126, 1)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
      },
    );
  }
}

class chair {
  int id;
  IconData icon;
  chair({required this.id, required this.icon});
}
