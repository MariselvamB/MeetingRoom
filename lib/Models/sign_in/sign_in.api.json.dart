import 'data.api.json.dart';

class SignIn {
  int? result;
  String? msg;
  Data? data;

  SignIn({this.result, this.msg, this.data});

  factory SignIn.fromJson(Map<String, dynamic> json) => SignIn(
        result: json['result'] as int?,
        msg: json['msg'] as String?,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'result': result,
        'msg': msg,
        'data': data?.toJson(),
      };
}
