class UserRequest {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String confirmPassword;
  final String gender;
  final String dob;
  final String address;
  final double latitude;
  final double longitude;
  final bool isVerify;

  UserRequest({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.gender,
    required this.dob,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.isVerify,
  });

  // Method to convert a UserRequest object to a map
  Map<String, dynamic> toMap() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'password': password,
      'confirm_password': confirmPassword,
      'gender': gender,
      'dob': dob,
      'address': address,
      'latitude': latitude,
      'longitude': longitude,
      'is_verify': isVerify ? 1 : 0,
    };
  }

  // Factory method to create a UserRequest object from a map
  factory UserRequest.fromMap(Map<String, dynamic> map) {
    return UserRequest(
      firstName: map['first_name'],
      lastName: map['last_name'],
      email: map['email'],
      password: map['password'],
      confirmPassword: map['confirm_password'],
      gender: map['gender'],
      dob: map['dob'],
      address: map['address'],
      latitude: map['latitude'],
      longitude: map['longitude'],
      isVerify: map['is_verify'] == 1,
    );
  }
}
