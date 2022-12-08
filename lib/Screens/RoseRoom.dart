// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RoseRoom extends StatefulWidget {
  const RoseRoom({super.key});

  @override
  State<RoseRoom> createState() => _RoseRoomState();
}

class _RoseRoomState extends State<RoseRoom> {
  TimeOfDay selectedTime = TimeOfDay.now();
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2000),
        lastDate: DateTime(3000));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  String? _selectedTime;
  Future<void> _show() async {
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
        _selectedTime = result.format(context);
      });
    }
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
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 81),
              child: const Text(
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
                    onTap: () => _selectDate(context),
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
                          "${selectedDate.toLocal()}".split(' ')[0],
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Montserrat',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color.fromRGBO(242, 243, 242, 0.5)),
                        ),
                        trailing: Icon(
                          Icons.date_range_outlined,
                          size: 20,
                          color: Color.fromRGBO(52, 146, 255, 1),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _show,
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
                          _selectedTime != null ? _selectedTime! : 'start Time',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Montserrat',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: Color.fromRGBO(242, 243, 242, 0.5)),
                        ),
                        trailing: Icon(
                          Icons.date_range_outlined,
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
                    child: ListTile(
                      title: Text(
                        "End Time",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Montserrat',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Color.fromRGBO(242, 243, 242, 0.5)),
                      ),
                      trailing: Icon(
                        Icons.date_range_outlined,
                        size: 20,
                        color: Color.fromRGBO(52, 146, 255, 1),
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
                    child: ListTile(
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
                        Icons.date_range_outlined,
                        size: 20,
                        color: Color.fromRGBO(52, 146, 255, 1),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 26.5, left: 54, right: 54),
              child: Divider(
                height: 1.5,
                color: Color.fromRGBO(52, 146, 255, 0.3),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 108, top: 40),
              child: const Text(
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
                    child: Text(
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
                    child: Text(
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
                    child: Text(
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
                    child: Text(
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
            )
          ],
        )
      ],
    ));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      theme: ThemeData(
        timePickerTheme: TimePickerThemeData(
          backgroundColor: Colors.amberAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          hourMinuteShape: const CircleBorder(),
        ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
            .copyWith(secondary: Colors.greenAccent),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _selectedTime;
  Future<void> _show() async {
    final TimeOfDay? result = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
        builder: (context, child) {
          return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                  // Using 12-Hour format
                  alwaysUse24HourFormat: false),
              // If you want 24-Hour format, just change alwaysUse24HourFormat to true
              child: child!);
        });
    if (result != null) {
      setState(() {
        _selectedTime = result.format(context);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
      ),
      body: Center(
        child: Text(
          _selectedTime != null ? _selectedTime! : 'No time selected!',
          style: const TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: ElevatedButton(
          onPressed: _show, child: const Text('Show Time Picker')),
    );
  }
}
