import 'dart:convert';

class LogoutRequestModel {
  int userId;

  LogoutRequestModel({
    required this.userId,
  });

  factory LogoutRequestModel.fromJson(String str) =>
      LogoutRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LogoutRequestModel.fromMap(Map<String, dynamic> json) =>
      LogoutRequestModel(
        userId: json["user_id"],
      );

  Map<String, dynamic> toMap() => {
        "user_id": userId,
      };
}
