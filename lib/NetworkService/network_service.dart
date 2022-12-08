// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:meedingroom/Models/sign_in/sign_in.api.json.dart';

class NetworkService {
  static Future<SignIn> signInpost(String UserName, String Password) async {
    var Url = Uri.parse("http://52.76.62.147:9000/api/panel/facility/login");
    final response = await http.post(Url, body: {
      "username": UserName,
      "password": Password,
    });
    if (response.statusCode == 200) {
      SignIn signInresponse = SignIn.fromJson(jsonDecode(response.body));
      return signInresponse;
    } else {
      throw Exception("Failed to Load Form Data");
    }
  }
}