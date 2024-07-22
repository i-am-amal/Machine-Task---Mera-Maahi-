import 'dart:convert';

class LogoutRequestModel {
  int userId;
  String token;
  String type;

  LogoutRequestModel(
      {required this.userId, required this.token, required this.type});

  factory LogoutRequestModel.fromJson(String str) =>
      LogoutRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LogoutRequestModel.fromMap(Map<String, dynamic> json) =>
      LogoutRequestModel(
          userId: json["user_id"],
          token: json["device_token"],
          type: json["device_type"]);

  Map<String, dynamic> toMap() =>
      {"user_id": userId, "device_type": type, "device_token": token};
}
