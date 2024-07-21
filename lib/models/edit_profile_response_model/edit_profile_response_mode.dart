import 'dart:convert';

class EditProfileResponseModel {
  bool status;
  int code;
  ResponseData data;

  EditProfileResponseModel({
    required this.status,
    required this.code,
    required this.data,
  });

  factory EditProfileResponseModel.fromJson(String str) =>
      EditProfileResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EditProfileResponseModel.fromMap(Map<String, dynamic> json) =>
      EditProfileResponseModel(
        status: json["status"],
        code: json["code"],
        data: ResponseData.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "code": code,
        "data": data.toMap(),
      };
}

class ResponseData {
  String message;

  ResponseData({
    required this.message,
  });

  factory ResponseData.fromMap(Map<String, dynamic> json) => ResponseData(
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "message": message,
      };
}
