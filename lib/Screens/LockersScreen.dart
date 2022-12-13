import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:meedingroom/Screens/homeScreenLockerPage.dart';
import 'package:meedingroom/Units/app_colors.dart';

class LockersScreen extends StatefulWidget {
  const LockersScreen({super.key});

  @override
  State<LockersScreen> createState() => _LockersScreenState();
}

class _LockersScreenState extends State<LockersScreen> {
  List<IconData> LockeStatusIcon = [
    Icons.lock,
    Icons.lock_open,
    Icons.lock,
    Icons.lock_open,
    Icons.lock,
    Icons.lock_open,
    Icons.lock,
    Icons.lock_open,
    Icons.lock,
    Icons.lock_open,
    Icons.lock,
    Icons.lock_open,
    Icons.lock,
    Icons.lock_open,
    Icons.lock,
    Icons.lock_open,
    Icons.lock,
    Icons.lock_open,
    Icons.lock,
    Icons.lock_open,
    Icons.lock,
    Icons.lock_open,
    Icons.lock,
    Icons.lock_open,
  ];

  List<String> LockeStatusText = [
    "Avaliable",
    "Reserved",
    "Opened",
    "Occupied",
    "Avaliable",
    "Reserved",
    "Opened",
    "Occupied",
    "Avaliable",
    "Reserved",
    "Opened",
    "Occupied",
    "Avaliable",
    "Reserved",
    "Opened",
    "Occupied",
    "Avaliable",
    "Reserved",
    "Opened",
    "Occupied",
    "Avaliable",
    "Reserved",
    "Opened",
    "Occupied",
    "Avaliable",
    "Reserved",
  ];
  List<String> LockerNumbers = [
    "Locker 1",
    "Locker 2",
    "Locker 3",
    "Locker 4",
    "Locker 5",
    "Locker 6",
    "Locker 7",
    "Locker 8",
    "Locker 9",
    "Locker 10",
    "Locker 11",
    "Locker 12",
    "Locker 13",
    "Locker 14",
    "Locker 15",
    "Locker 16",
    "Locker 17",
    "Locker 18",
    "Locker 19",
    "Locker 20",
    "Locker 21",
    "Locker 22",
    "Locker 23",
    "Locker 24",
    "Locker 25",
    "Locker 26"
  ];
  List<LockerDetails> LockerDetailsLIst = [
    LockerDetails(
        id: 1,
        LockeStatusIcon: Icons.lock,
        LockerNumbers: "Locker 1",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 2,
        LockeStatusIcon: Icons.lock_open,
        LockerNumbers: "Locker 2",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 3,
        LockeStatusIcon: Icons.lock,
        LockerNumbers: "Locker 3",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 4,
        LockeStatusIcon: Icons.lock_open,
        LockerNumbers: "Locker 4",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 5,
        LockeStatusIcon: Icons.lock,
        LockerNumbers: "Locker 5",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 6,
        LockeStatusIcon: Icons.lock_open,
        LockerNumbers: "Locker 6",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 7,
        LockeStatusIcon: Icons.lock,
        LockerNumbers: "Locker 7",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 8,
        LockeStatusIcon: Icons.lock_open,
        LockerNumbers: "Locker 8",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 9,
        LockeStatusIcon: Icons.lock,
        LockerNumbers: "Locker 9",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 10,
        LockeStatusIcon: Icons.lock_open,
        LockerNumbers: "Locker 10",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 11,
        LockeStatusIcon: Icons.lock,
        LockerNumbers: "Locker 11",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 12,
        LockeStatusIcon: Icons.lock_open,
        LockerNumbers: "Locker 12",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 13,
        LockeStatusIcon: Icons.lock,
        LockerNumbers: "Locker 13",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 14,
        LockeStatusIcon: Icons.lock_open,
        LockerNumbers: "Locker 14",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 15,
        LockeStatusIcon: Icons.lock,
        LockerNumbers: "Locker 15",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 16,
        LockeStatusIcon: Icons.lock_open,
        LockerNumbers: "Locker 16",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 17,
        LockeStatusIcon: Icons.lock,
        LockerNumbers: "Locker 17",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 18,
        LockeStatusIcon: Icons.lock_open,
        LockerNumbers: "Locker 18",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 19,
        LockeStatusIcon: Icons.lock,
        LockerNumbers: "Locker 19",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 20,
        LockeStatusIcon: Icons.lock_open,
        LockerNumbers: "Locker 20",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 21,
        LockeStatusIcon: Icons.lock,
        LockerNumbers: "Locker 21",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 22,
        LockeStatusIcon: Icons.lock_open,
        LockerNumbers: "Locker 22",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 23,
        LockeStatusIcon: Icons.lock,
        LockerNumbers: "Locker 23",
        LockeStatusText: "Avaliable"),
    LockerDetails(
        id: 24,
        LockeStatusIcon: Icons.lock_open,
        LockerNumbers: "Locker 24",
        LockeStatusText: "Avaliable"),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      color: AppColors.appBackground,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [BoxShadow(blurRadius: 50)],
            borderRadius: BorderRadius.circular(20),
            color: AppColors.appBackground,
          ),
          child: GridView.builder(
              padding: EdgeInsets.only(top: 25, left: 25, right: 25),
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6, mainAxisSpacing: 35, crossAxisSpacing: 35),
              itemCount: LockerDetailsLIst.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    newShowOpenCloseDialogMethod(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: const [BoxShadow(blurRadius: 50)],
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.appBackground,
                      border: Border.all(
                        width: 1,
                        color: Color.fromRGBO(57, 136, 181, 0.3),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 10,
                                width: 1,
                              ),
                              Icon(Icons.edit, size: 10, color: AppColors.text),
                            ],
                          ),
                          Icon(
                            LockerDetailsLIst[index].LockeStatusIcon,
                            size: 40,
                            color: AppColors.text,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 3),
                            child: Text(
                              LockerDetailsLIst[index].LockerNumbers,
                              style: const TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Montserrat',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: AppColors.text),
                            ),
                          ),
                          Text(
                            LockerDetailsLIst[index].LockeStatusText,
                            style: const TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Montserrat',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: AppColors.text),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    ));
  }

  Future<dynamic> newShowOpenCloseDialogMethod(BuildContext context) {
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
                Row(
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: 10, bottom: 30, left: 30, right: 20),
                          child: Icon(Icons.lock_outline,
                              size: 70,
                              color: Color.fromRGBO(255, 113, 207, 1)),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 10, bottom: 30, right: 20),
                          padding: EdgeInsets.only(top: 10, right: 20),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "Locker 3",
                                  style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Montserrat',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: AppColors.text,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "Booked",
                                  style: const TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Montserrat',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: AppColors.text),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: const [BoxShadow(blurRadius: 5)],
                          color: const Color.fromARGB(255, 41, 41, 41),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 52, 146, 255),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 8, bottom: 8),
                            child: Text(
                              "Close",
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
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        newShowCreatePassCodeDialogMethod(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(74, 108, 204, 1),
                          boxShadow: const [BoxShadow(blurRadius: 5)],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(52, 146, 255, 1),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 8, bottom: 8),
                            child: Text(
                              "Open",
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
                    ),
                  ],
                )
              ],
            ),
          );
        });
      },
    );
  }

  Future<dynamic> newShowCreatePassCodeDialogMethod(BuildContext context) {
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
                Row(
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: 10, bottom: 30, left: 30, right: 20),
                          child: Icon(Icons.lock_outline,
                              size: 70,
                              color: Color.fromRGBO(255, 113, 207, 1)),
                        ),
                        Container(
                          margin:
                              EdgeInsets.only(top: 10, bottom: 30, right: 20),
                          padding: EdgeInsets.only(top: 10, right: 20),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "Locker 3",
                                  style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Montserrat',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: AppColors.text,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "Booked",
                                  style: const TextStyle(
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Montserrat',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: AppColors.text),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    newShowAddLockerDialogMethod(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(74, 108, 204, 1),
                      boxShadow: const [BoxShadow(blurRadius: 5)],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: const Color.fromRGBO(52, 146, 255, 1),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 8, bottom: 8),
                        child: Text(
                          "Create Pass Code",
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
          );
        });
      },
    );
  }

  Future<dynamic> newShowAddLockerDialogMethod(BuildContext context) {
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
                Row(
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
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 20, bottom: 40),
                  child: Text(
                    "You Already have a Locker",
                    style: const TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Montserrat',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: AppColors.text),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: const [BoxShadow(blurRadius: 5)],
                          color: const Color.fromARGB(255, 41, 41, 41),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: const Color.fromARGB(255, 52, 146, 255),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 8, bottom: 8),
                            child: Text(
                              "Close",
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
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        newShowBookingConformedDialogMethod(context);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(74, 108, 204, 1),
                          boxShadow: const [BoxShadow(blurRadius: 5)],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            width: 1,
                            color: const Color.fromRGBO(52, 146, 255, 1),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, right: 20, top: 8, bottom: 8),
                            child: Text(
                              "Add Locker",
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
                    ),
                  ],
                )
              ],
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
                      builder: (context) => const homeScreenLockerPage()));
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

class LockerDetails {
  int id;
  IconData LockeStatusIcon;
  String LockeStatusText;
  String LockerNumbers;
  LockerDetails(
      {required this.id,
      required this.LockeStatusIcon,
      required this.LockeStatusText,
      required this.LockerNumbers});
}
