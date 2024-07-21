class VerifyOtpRequestModel {
  final String email;

  VerifyOtpRequestModel({
    required this.email,
  });

  factory VerifyOtpRequestModel.fromJson(Map<String, dynamic> json) {
    return VerifyOtpRequestModel(
      email: json['email'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
    };
  }
}
