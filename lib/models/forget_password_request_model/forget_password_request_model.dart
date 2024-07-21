class ForgetPasswordRequestModel {
  final String passwordOtp;
  final String deviceToken;
  final String deviceType;
  final int userId;

  ForgetPasswordRequestModel({
    required this.passwordOtp,
    required this.deviceToken,
    required this.deviceType,
    required this.userId,
  });

  factory ForgetPasswordRequestModel.fromJson(Map<String, dynamic> json) {
    return ForgetPasswordRequestModel(
      passwordOtp: json['password_otp'],
      deviceToken: json['device_token'],
      deviceType: json['device_type'],
      userId: json['user_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'password_otp': passwordOtp,
      'device_token': deviceToken,
      'device_type': deviceType,
      'user_id': userId,
    };
  }
}
