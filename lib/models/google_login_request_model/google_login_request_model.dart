class GoogleLoginRequestModel {
  final String email;
  final String googleId;
  final String deviceToken;
  final String deviceType;
  final String firstName;
  final String lastName;

  GoogleLoginRequestModel({
    required this.email,
    required this.googleId,
    required this.deviceToken,
    required this.deviceType,
    required this.firstName,
    required this.lastName,
  });

  factory GoogleLoginRequestModel.fromJson(Map<String, dynamic> json) {
    return GoogleLoginRequestModel(
      email: json['email'],
      googleId: json['google_id'],
      deviceToken: json['device_token'],
      deviceType: json['device_type'],
      firstName: json['first_name'],
      lastName: json['last_name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'google_id': googleId,
      'device_token': deviceToken,
      'device_type': deviceType,
      'first_name': firstName,
      'last_name': lastName,
    };
  }
}
