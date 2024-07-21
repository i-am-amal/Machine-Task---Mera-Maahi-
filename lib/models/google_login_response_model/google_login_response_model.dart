class GoogleLoginResponseModel {
  final bool status;
  final int code;
  final Data data;

  GoogleLoginResponseModel({
    required this.status,
    required this.code,
    required this.data,
  });

  factory GoogleLoginResponseModel.fromJson(Map<String, dynamic> json) {
    return GoogleLoginResponseModel(
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
  final String? status;
  final String message;
  final bool socialLogin;
  final String token;
  final User user;

  Data({
    this.status,
    required this.message,
    required this.socialLogin,
    required this.token,
    required this.user,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      status: json['status'],
      message: json['message'],
      socialLogin: json['social_login'],
      token: json['token'],
      user: User.fromJson(json['user']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'social_login': socialLogin,
      'token': token,
      'user': user.toJson(),
    };
  }
}

class User {
  final String email;
  final String googleId;
  final String firstName;
  final String lastName;
  final String socialType;
  final String isVerify;
  final String updatedAt;
  final String createdAt;
  final int id;

  User({
    required this.email,
    required this.googleId,
    required this.firstName,
    required this.lastName,
    required this.socialType,
    required this.isVerify,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json['email'],
      googleId: json['google_id'],
      firstName: json['first_name'],
      lastName: json['last_name'],
      socialType: json['social_type'],
      isVerify: json['is_verify'],
      updatedAt: json['updated_at'],
      createdAt: json['created_at'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'google_id': googleId,
      'first_name': firstName,
      'last_name': lastName,
      'social_type': socialType,
      'is_verify': isVerify,
      'updated_at': updatedAt,
      'created_at': createdAt,
      'id': id,
    };
  }
}
