class UploadImageResponseModel {
  final bool status;
  final int code;
  final Data data;

  UploadImageResponseModel({
    required this.status,
    required this.code,
    required this.data,
  });

  factory UploadImageResponseModel.fromJson(Map<String, dynamic> json) {
    return UploadImageResponseModel(
      status: json['status'],
      code: json['code'],
      data: Data.fromJson(json['data']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'code': code,
      'data': data.toJson(),
    };
  }
}

class Data {
  final String message;

  Data({
    required this.message,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
    };
  }
}
