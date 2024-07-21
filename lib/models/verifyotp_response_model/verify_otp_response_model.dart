class VerifyOtpResponseModel {
  final bool status;
  final int code;
  final Data data;

  VerifyOtpResponseModel({
    required this.status,
    required this.code,
    required this.data,
  });

  factory VerifyOtpResponseModel.fromJson(Map<String, dynamic> json) {
    return VerifyOtpResponseModel(
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
  final int userId;
  final int otp;

  Data({
    required this.message,
    required this.userId,
    required this.otp,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      message: json['message'],
      userId: json['user_id'],
      otp: json['otp'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'user_id': userId,
      'otp': otp,
    };
  }
}
