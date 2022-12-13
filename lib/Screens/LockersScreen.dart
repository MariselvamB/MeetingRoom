import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
              padding: EdgeInsets.only(top: 40, left: 25, right: 25),
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6, mainAxisSpacing: 35, crossAxisSpacing: 35),
              itemCount: LockeStatusIcon.length,
              itemBuilder: (context, index) {
                return Container(
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
                          LockeStatusIcon[index],
                          size: 40,
                          color: AppColors.text,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8, bottom: 3),
                          child: Text(
                            LockerNumbers[index],
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
                          LockeStatusText[index],
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
                );
              }),
        ),
      ),
    ));
  }
}
