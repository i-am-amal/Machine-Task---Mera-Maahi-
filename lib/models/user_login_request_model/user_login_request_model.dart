class UserLoginRequestModel {
  final String email;
  final String password;
  final String deviceType;
  final String deviceToken;

  UserLoginRequestModel({
    required this.email,
    required this.password,
    required this.deviceType,
    required this.deviceToken,
  });

  factory UserLoginRequestModel.fromJson(Map<String, dynamic> json) {
    return UserLoginRequestModel(
      email: json['email'],
      password: json['password'],
      deviceType: json['device_type'],
      deviceToken: json['device_token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'device_type': deviceType,
      'device_token': deviceToken,
    };
  }
}
