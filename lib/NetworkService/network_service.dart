// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meedingroom/Models/booking_datetime.dart';
import 'package:meedingroom/Models/sign_in/sign_in.api.json.dart';

class NetworkService {
  static Future<SignIn?> signInpost(String UserName, String Password) async {
    var Url = Uri.parse("http://52.76.62.147:9000/api/panel/facility/login");
    final response = await http.post(Url,
        body: jsonEncode({
          "username": UserName,
          "password": Password,
        }),
        headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200) {
      SignIn signInresponse = SignIn.fromJson(jsonDecode(response.body));
      return signInresponse;
    } else if (response.statusCode == 404) {
      print("password incorrect");
    } else {
      throw Exception("Failed to Load Form Data");
    }
  }

  static Future<BookingDatetime?> Bookingpost(
      String companies_id,
      String floor_id,
      String start_date,
      String end_date,
      String start_time,
      String end_time) async {
    var Url =
        Uri.parse("http://52.76.62.147:9000/api/panel/hotdesking/available");
    final response = await http.post(Url,
        body: jsonEncode({
          "companies_id": companies_id,
          "floor_id": floor_id,
          "start_date": "$start_date",
          "end_date": "$end_date",
          "start_time": "$start_time",
          "end_time": "$end_time"
        }),
        headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200) {
      BookingDatetime BookingDatetimeresponse =
          BookingDatetime.fromJson(jsonDecode(response.body));
      return BookingDatetimeresponse;
    } else if (response.statusCode == 404) {
    } else {
      throw Exception("Failed to Load Form Data");
    }
  }
}
