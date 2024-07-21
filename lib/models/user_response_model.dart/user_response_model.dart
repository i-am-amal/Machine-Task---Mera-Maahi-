class UserRegisterResponseModel {
  final bool status;
  final int code;
  final Data data;

  UserRegisterResponseModel({
    required this.status,
    required this.code,
    required this.data,
  });

  factory UserRegisterResponseModel.fromJson(Map<String, dynamic> json) {
    return UserRegisterResponseModel(
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
  final UserDetails userDetails;

  Data({
    required this.message,
    required this.userDetails,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      message: json['message'],
      userDetails: UserDetails.fromJson(json['user_id']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'user_id': userDetails.toJson(),
    };
  }
}

class UserDetails {
  final String firstName;
  final String lastName;
  final String email;
  final String gender;
  final String dob;
  final String address;
  final double latitude;
  final double longitude;
  final bool isVerify;
  final String updatedAt;
  final String createdAt;
  final int id;

  UserDetails({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.gender,
    required this.dob,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.isVerify,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) {
    return UserDetails(
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      gender: json['gender'],
      dob: json['dob'],
      address: json['address'],
      latitude: double.parse(json['latitude']),
      longitude: double.parse(json['longitude']),
      isVerify: json['is_verify'] == '1',
      updatedAt: json['updated_at'],
      createdAt: json['created_at'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'gender': gender,
      'dob': dob,
      'address': address,
      'latitude': latitude.toString(),
      'longitude': longitude.toString(),
      'is_verify': isVerify ? '1' : '0',
      'updated_at': updatedAt,
      'created_at': createdAt,
      'id': id,
    };
  }
}
