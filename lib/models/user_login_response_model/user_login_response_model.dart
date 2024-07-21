class UserLoginResponseModel {
  final bool status;
  final int code;
  final Data data;

  UserLoginResponseModel({
    required this.status,
    required this.code,
    required this.data,
  });

  factory UserLoginResponseModel.fromJson(Map<String, dynamic> json) {
    return UserLoginResponseModel(
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
  final int id;
  final String token;
  final User user;

  Data({
    required this.message,
    required this.id,
    required this.token,
    required this.user,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      message: json['message'],
      id: json['id'],
      token: json['token'],
      user: User.fromJson(json['user']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'id': id,
      'token': token,
      'user': user.toJson(),
    };
  }
}

class User {
  final int id;
  final String firstName;
  final String lastName;
  final String email;
  final String? emailVerifiedAt;
  final String? latitude;
  final String? longitude;
  final String? socialType;
  final String? socialId;
  final String? profileImage;
  final String gender;
  final String? zipCode;
  final String dob;
  final String? language;
  final String address;
  final String? passwordOtp;
  final String? timezone;
  final String? verificationImage;
  final String isPremium;
  final String verificationStatus;
  final String firstTimeLogin;
  final String? appleId;
  final String? googleId;
  final String isVerify;
  final String status;
  final int isDeactivate;
  final String createdAt;
  final String updatedAt;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    this.emailVerifiedAt,
    this.latitude,
    this.longitude,
    this.socialType,
    this.socialId,
    this.profileImage,
    required this.gender,
    this.zipCode,
    required this.dob,
    this.language,
    required this.address,
    this.passwordOtp,
    this.timezone,
    this.verificationImage,
    required this.isPremium,
    required this.verificationStatus,
    required this.firstTimeLogin,
    this.appleId,
    this.googleId,
    required this.isVerify,
    required this.status,
    required this.isDeactivate,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      emailVerifiedAt: json['email_verified_at'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      socialType: json['social_type'],
      socialId: json['social_id'],
      profileImage: json['profile_image'],
      gender: json['gender'],
      zipCode: json['zip_code'],
      dob: json['dob'],
      language: json['language'],
      address: json['address'],
      passwordOtp: json['password_otp'],
      timezone: json['timezone'],
      verificationImage: json['verification_image'],
      isPremium: json['is_premium'],
      verificationStatus: json['verification_status'],
      firstTimeLogin: json['first_time_login'],
      appleId: json['apple_id'],
      googleId: json['google_id'],
      isVerify: json['is_verify'],
      status: json['status'],
      isDeactivate: json['is_deactivate'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'email_verified_at': emailVerifiedAt,
      'latitude': latitude,
      'longitude': longitude,
      'social_type': socialType,
      'social_id': socialId,
      'profile_image': profileImage,
      'gender': gender,
      'zip_code': zipCode,
      'dob': dob,
      'language': language,
      'address': address,
      'password_otp': passwordOtp,
      'timezone': timezone,
      'verification_image': verificationImage,
      'is_premium': isPremium,
      'verification_status': verificationStatus,
      'first_time_login': firstTimeLogin,
      'apple_id': appleId,
      'google_id': googleId,
      'is_verify': isVerify,
      'status': status,
      'is_deactivate': isDeactivate,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
