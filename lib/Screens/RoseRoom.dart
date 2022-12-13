// ignore_for_file: file_names, unrelated_type_equality_checks, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:meedingroom/Screens/homeScreenRoomPage.dart';

class RoseRoom extends StatefulWidget {
  const RoseRoom({super.key});

  @override
  State<RoseRoom> createState() => _RoseRoomState();
}

class _RoseRoomState extends State<RoseRoom> {
  String selectedListValue = "1";
  String selectedMailValue = "Select Invitee 1 mail";

  List<String> ListsOfItems = <String>[
    '1',
    '2',
    '3',
    '4',
    '5',
  ];
  List<String> ListsOfMailItems = <String>[
    "Select Invitee 1 mail",
    "Select Invitee 2 mail",
    "Select Invitee 3 mail",
    "Select Invitee 4 mail",
    "Select Invitee 5 mail",
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
  // Future<void> _selectStartTime() async {
  //   DatePickerWidget(
  //                     hintText: "Start Time",
  //                     controller: startTimeController,
  //                     onTap: () async {
  //                       if (startDate != null) {
  //                         AppUtils.showTimePicker(
  //                             controller: startTimeController,
  //                             context: context,
  //                             onTimeSelected: (date) {
  //                               startTime = date;
  //                             },
  //                             minimumDate:
  //                                 startDate!.isToday ? DateTime.now() : null,
  //                             maximumDate: null);
  //                       } else {
  //                         Get.snackbar('Error', "Select Start Date",
  //                             snackPosition: SnackPosition.BOTTOM,
  //                             backgroundColor: Colors.red);
  //                       }
  //                     },
  //                     mode: DateMode.time,
  //                   ),
  // }

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

  // Future<void> _selectStartTime() async {
  //   final TimeOfDay? result = await showTimePicker(
  //       context: context,
  //       initialTime: selectedStartTime,
  //       builder: (context, child) {
  //         return MediaQuery(
  //             data:
  //                 MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
  //             child: child!);
  //       });
  //   if (result != null) {
  //     setState(() {
  //       _selectedStartTime = result.format(context);
  //     });
  //   }
  // }

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
                "Rose Room",
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
            Padding(
              padding: const EdgeInsets.only(left: 108, top: 41),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
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
                  GestureDetector(
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
                  GestureDetector(
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
                          size: 20,
                          color: Color.fromRGBO(52, 146, 255, 1),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
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
                          size: 20,
                          color: Color.fromRGBO(52, 146, 255, 1),
                        ),
                      ),
                    ),
                  ),
                  Container(
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
                    child: const ListTile(
                      title: Text(
                        "Other Rooms",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Montserrat',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color.fromRGBO(242, 243, 242, 0.5)),
                      ),
                      trailing: Icon(
                        Icons.arrow_drop_down,
                        size: 20,
                        color: Color.fromRGBO(52, 146, 255, 1),
                      ),
                    ),
                  )
                ],
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
                "Available Timing ",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontFamily: 'Montserrat',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 108, top: 41),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      newShowRoomA_DialogMethod(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 190,
                      decoration: BoxDecoration(
                        boxShadow: const [BoxShadow(blurRadius: 5)],
                        color: const Color.fromRGBO(41, 64, 39, 1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(14, 125, 0, 0.97)),
                      ),
                      child: const Text(
                        "11: 00 Am",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Montserrat',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 190,
                    decoration: BoxDecoration(
                      boxShadow: const [BoxShadow(blurRadius: 5)],
                      color: const Color.fromRGBO(64, 39, 39, 1),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1,
                          color: const Color.fromRGBO(172, 43, 53, 1)),
                    ),
                    child: const Text(
                      "11: 30 Am",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Montserrat',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 28,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 190,
                      decoration: BoxDecoration(
                        boxShadow: const [BoxShadow(blurRadius: 5)],
                        color: const Color.fromRGBO(41, 64, 39, 1),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(14, 125, 0, 0.97)),
                      ),
                      child: const Text(
                        "11: 00 Am",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Montserrat',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 28,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 190,
                    decoration: BoxDecoration(
                      boxShadow: const [BoxShadow(blurRadius: 5)],
                      color: const Color.fromRGBO(41, 64, 39, 1),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          width: 1,
                          color: const Color.fromRGBO(14, 125, 0, 0.97)),
                    ),
                    child: const Text(
                      "11: 00 Am",
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontFamily: 'Montserrat',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 28,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    ));
  }

  Future<dynamic> newShowRoomA_DialogMethod(BuildContext context) {
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
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, left: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Room A",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Montserrat',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 1,
                              color: Color.fromARGB(255, 255, 255, 255)),
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
                  const Divider(
                      height: 2.5, color: Color.fromRGBO(0, 78, 169, 0.6)),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 10, left: 15),
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                            right: 15,
                          ),
                          child: Text(
                            "Number of pax allowed",
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Montserrat',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                                letterSpacing: 1,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                        Text(
                          "2",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Montserrat',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 1,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(41, 41, 41, 1),
                      boxShadow: const [BoxShadow(blurRadius: 10)],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: const Color.fromRGBO(52, 146, 255, 1),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(
                                    right: 75,
                                  ),
                                  child: Text(
                                    "List of Pax",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Montserrat',
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color:
                                            Color.fromRGBO(242, 243, 242, 1)),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      right: 10, left: 20),
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(41, 41, 41, 1),
                                    boxShadow: const [BoxShadow(blurRadius: 5)],
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      width: 1,
                                      color:
                                          const Color.fromRGBO(52, 146, 255, 1),
                                    ),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      dropdownColor:
                                          const Color.fromRGBO(41, 41, 41, 1),
                                      value: selectedListValue,
                                      icon: const Padding(
                                        padding: EdgeInsets.only(left: 25),
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          size: 40,
                                        ),
                                      ),
                                      items: ListsOfItems.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(
                                            items,
                                            style: const TextStyle(
                                                decoration: TextDecoration.none,
                                                fontFamily: 'Montserrat',
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15,
                                                letterSpacing: 1,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255)),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (String? Value) {
                                        setState(() {
                                          selectedListValue = Value!;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          DropdownButton(
                            dropdownColor: const Color.fromRGBO(41, 41, 41, 1),
                            value: selectedMailValue,
                            icon: const Padding(
                              padding: EdgeInsets.only(left: 75),
                              child: Icon(
                                Icons.arrow_drop_down,
                                size: 40,
                              ),
                            ),
                            items: ListsOfMailItems.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: const TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Montserrat',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 18,
                                      letterSpacing: 0.5,
                                      color: Color.fromRGBO(242, 243, 242, 1)),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? Value) {
                              setState(() {
                                selectedMailValue = Value!;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Start date",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Montserrat',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Color.fromRGBO(242, 243, 242, 1)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Text(
                                "End date",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Montserrat',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color.fromRGBO(242, 243, 242, 1)),
                              ),
                            ),
                            Text(
                              "Start Time",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Montserrat',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Color.fromRGBO(242, 243, 242, 1)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Text(
                                "End Time",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Montserrat',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color.fromRGBO(242, 243, 242, 1)),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "05-12-2022",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Montserrat',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color.fromRGBO(242, 243, 242, 1)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                child: Text(
                                  "06-12-2022",
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Montserrat',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Color.fromRGBO(242, 243, 242, 1)),
                                ),
                              ),
                              Text(
                                "01:25 Pm",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Montserrat',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Color.fromRGBO(242, 243, 242, 1)),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10, bottom: 10),
                                child: Text(
                                  "03:25 Pm",
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Montserrat',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18,
                                      color: Color.fromRGBO(242, 243, 242, 1)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 45, right: 45, top: 25, bottom: 20),
                    child: GestureDetector(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          newShowConformationMailSentDialogMethod(context);
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

  Future<dynamic> newShowConformationMailSentDialogMethod(
      BuildContext context) {
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
                          " Conformation Mail Sent",
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
