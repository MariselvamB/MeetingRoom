import 'hotdesking.api.json.dart';

class Data {
  String? message;
  int? status;
  String? location;
  Hotdesking? hotdesking;

  Data({this.message, this.status, this.location, this.hotdesking});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        message: json['message'] as String?,
        status: json['status'] as int?,
        location: json['location'] as String?,
        hotdesking: json['hotdesking'] == null
            ? null
            : Hotdesking.fromJson(json['hotdesking'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'message': message,
        'status': status,
        'location': location,
        'hotdesking': hotdesking?.toJson(),
      };
}
