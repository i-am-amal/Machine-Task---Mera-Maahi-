import 'dart:convert';

class UserDetailsResponseModel {
  final bool status;
  final int code;
  final UserDetailsData data;

  UserDetailsResponseModel({
    required this.status,
    required this.code,
    required this.data,
  });

  factory UserDetailsResponseModel.fromJson(Map<String, dynamic> json) {
    return UserDetailsResponseModel(
      status: json['status'],
      code: json['code'],
      data: UserDetailsData.fromJson(json['data']),
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

class UserDetailsData {
  final String message;
  final UserDetail userDetail;

  UserDetailsData({
    required this.message,
    required this.userDetail,
  });

  factory UserDetailsData.fromJson(Map<String, dynamic> json) {
    return UserDetailsData(
      message: json['message'],
      userDetail: UserDetail.fromJson(json['userDetail']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'userDetail': userDetail.toJson(),
    };
  }
}

class UserDetail {
  final String userId;
  final String religion;
  final String community;
  final String relationshipStatus;
  final String country;
  final String state;
  final String city;
  final String educationCourse;
  final String educationCollegeName;
  final String educationCollegePlace;
  final String working;
  final String jobRole;
  final String companyName;
  final String workplace;
  final String profileFor;
  final String aboutMe;
  final List<String> passions;
  final String updatedAt;
  final String createdAt;
  final int id;

  UserDetail({
    required this.userId,
    required this.religion,
    required this.community,
    required this.relationshipStatus,
    required this.country,
    required this.state,
    required this.city,
    required this.educationCourse,
    required this.educationCollegeName,
    required this.educationCollegePlace,
    required this.working,
    required this.jobRole,
    required this.companyName,
    required this.workplace,
    required this.profileFor,
    required this.aboutMe,
    required this.passions,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory UserDetail.fromJson(Map<String, dynamic> json) {
    return UserDetail(
      userId: json['user_id'],
      religion: json['religion'],
      community: json['community'],
      relationshipStatus: json['relationship_status'],
      country: json['country'],
      state: json['state'],
      city: json['city'],
      educationCourse: json['education_course'],
      educationCollegeName: json['education_college_name'],
      educationCollegePlace: json['education_college_place'],
      working: json['working'],
      jobRole: json['job_role'],
      companyName: json['company_name'],
      workplace: json['workplace'],
      profileFor: json['profile_for'],
      aboutMe: json['about_me'],
      passions: List<String>.from(jsonDecode(json['passions'])),
      updatedAt: json['updated_at'],
      createdAt: json['created_at'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'religion': religion,
      'community': community,
      'relationship_status': relationshipStatus,
      'country': country,
      'state': state,
      'city': city,
      'education_course': educationCourse,
      'education_college_name': educationCollegeName,
      'education_college_place': educationCollegePlace,
      'working': working,
      'job_role': jobRole,
      'company_name': companyName,
      'workplace': workplace,
      'profile_for': profileFor,
      'about_me': aboutMe,
      'passions': jsonEncode(passions),
      'updated_at': updatedAt,
      'created_at': createdAt,
      'id': id,
    };
  }
}
