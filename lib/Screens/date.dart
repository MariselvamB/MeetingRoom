// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';
// import 'package:new_scanner/http/models/hot_desking_available_response/Table.dart';
// import 'package:new_scanner/utils/apputils.dart';
// import 'package:new_scanner/utils/enums.dart';
// import 'package:new_scanner/utils/extension.dart';
// import 'package:new_scanner/widgets/hot_desk/date_picker_widget.dart';

// import '../../utils/color_resources.dart';
// import 'hot_desk_seat_dialog.dart';

// class HotDeskingTimeDialog extends StatelessWidget {
//   HotDeskingTimeDialog({Key? key, required this.roomId}) : super(key: key);
//   int roomId;
//   final startDateController = TextEditingController();
//   final endDateController = TextEditingController();
//   final startTimeController = TextEditingController();
//   final endTimeController = TextEditingController();

//   DateTime? startDate;
//   DateTime? endDate;

//   DateTime? startTime;
//   DateTime? endTime;

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       backgroundColor: Colors.black,
//       shape: RoundedRectangleBorder(
//         side: const BorderSide(color: Colors.blue),
//         borderRadius: BorderRadius.circular(20.0),
//       ),
//       // clipBehavior: Clip.antiAlias, //  add clipBehavior
//       child: Container(
//         padding: const EdgeInsets.all(30),
//         child: Column(
//             mainAxisSize: MainAxisSize.min,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   DatePickerWidget(
//                     hintText: "Start date",
//                     controller: startDateController,
//                     onTap: () async {
//                       var date = await showDatePicker(
//                         context: context,
//                         initialDate: DateTime.now(),
//                         firstDate: DateTime.now(),
//                         lastDate: DateTime.now().add(const Duration(days: 365)),
//                       );

//                       if (date != null) {
//                         startDate = date;
//                         startDateController.text =
//                             DateFormat('dd-MM-yyyy').format(date);
//                         endDate = null;
//                         endDateController.clear();
//                         startTime = null;
//                         startTimeController.clear();
//                         endTime = null;
//                         endTimeController.clear();
//                       }
//                     },
//                     mode: DateMode.date,
//                   ),
//                   const SizedBox(
//                     width: 30,
//                   ),
//                   DatePickerWidget(
//                     hintText: "End date",
//                     controller: endDateController,
//                     onTap: () async {
//                       if (startDate == null) {
//                         Get.snackbar('Error', "Select Start Date",
//                             snackPosition: SnackPosition.BOTTOM,
//                             backgroundColor: Colors.red);
//                       } else {
//                         var date = await showDatePicker(
//                             context: context,
//                             initialDate: startDate!,
//                             firstDate: startDate!,
//                             lastDate:
//                                 startDate!.add(const Duration(days: 365)));

//                         if (date != null) {
//                           endDate = date;
//                           endDateController.text =
//                               DateFormat('dd-MM-yyyy').format(date);
//                         }
//                       }
//                     },
//                     mode: DateMode.date,
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 28.0, bottom: 28),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     DatePickerWidget(
//                       hintText: "Start Time",
//                       controller: startTimeController,
//                       onTap: () async {
//                         if (startDate != null) {
//                           AppUtils.showTimePicker(
//                               controller: startTimeController,
//                               context: context,
//                               onTimeSelected: (date) {
//                                 startTime = date;
//                               },
//                               minimumDate:
//                                   startDate!.isToday ? DateTime.now() : null,
//                               maximumDate: null);
//                         } else {
//                           Get.snackbar('Error', "Select Start Date",
//                               snackPosition: SnackPosition.BOTTOM,
//                               backgroundColor: Colors.red);
//                         }
//                       },
//                       mode: DateMode.time,
//                     ),
//                     const SizedBox(
//                       width: 30,
//                     ),
//                     DatePickerWidget(
//                       hintText: "End Time",
//                       controller: endTimeController,
//                       onTap: () async {
//                         if (startTime != null) {
//                           AppUtils.showTimePicker(
//                               controller: endTimeController,
//                               context: context,
//                               onTimeSelected: (date) {
//                                 endTime = date;
//                               },
//                               minimumDate: startTime,
//                               maximumDate: null);
//                         } else {
//                           Get.snackbar('Error', "Select Start Time",
//                               snackPosition: SnackPosition.BOTTOM,
//                               backgroundColor: Colors.red);
//                         }
//                       },
//                       mode: DateMode.time,
//                     ),
//                   ],
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   if (startDate == null) {
//                     Get.snackbar("Error", "Select Start date",
//                         backgroundColor: Colors.red);
//                   } else if (endDate == null) {
//                     Get.snackbar("Error", "Select End date",
//                         backgroundColor: Colors.red);
//                   } else if (startTime == null) {
//                     Get.snackbar("Error", "Select Start Time",
//                         backgroundColor: Colors.red);
//                   } else if (endTime == null) {
//                     Get.snackbar("Error", "Select End Time",
//                         backgroundColor: Colors.red);
//                   } else {
//                     Navigator.of(context).pop();
//                     showDialog(
//                         context: context,
//                         builder: (ctx) => HotdeskSeatDialog(
//                               table: HotDeskTable(),
//                             ));
//                   }
//                 },
//                 focusColor: Colors.blue,
//                 splashColor: const Color.fromARGB(255, 152, 245, 155),
//                 child: Ink(
//                   height: 40,
//                   width: 150,
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: const Color.fromARGB(255, 8, 133, 12)),
//                   child: Center(
//                     child: Text(
//                       'confirm',
//                       style: TextStyle(color: ColorResources.kTextColor),
//                     ),
//                   ),
//                 ),
//               )
//             ]),
//       ),
//     );
//   }
// }
