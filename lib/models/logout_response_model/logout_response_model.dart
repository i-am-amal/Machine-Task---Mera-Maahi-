import 'dart:convert';

class LogoutResponseModel {
  bool? status;
  int? code;
  LogoutData? data;

  LogoutResponseModel({
    this.status,
    this.code,
    this.data,
  });

  factory LogoutResponseModel.fromJson(String str) =>
      LogoutResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LogoutResponseModel.fromMap(Map<String, dynamic> json) =>
      LogoutResponseModel(
        status: json["status"],
        code: json["code"],
        data: json["data"] != null ? LogoutData.fromMap(json["data"]) : null,
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "code": code,
        "data": data?.toMap(),
      };
}

class LogoutData {
  String? message;

  LogoutData({
    this.message,
  });

  factory LogoutData.fromMap(Map<String, dynamic> json) => LogoutData(
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "message": message,
      };
}
