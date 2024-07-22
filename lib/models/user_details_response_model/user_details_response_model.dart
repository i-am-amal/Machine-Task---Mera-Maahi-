class UserDetailsResponseModel {
  final String? message;
  final UserDetail? userDetail;

  UserDetailsResponseModel({
    this.message,
    this.userDetail,
  });

  factory UserDetailsResponseModel.fromJson(Map<String, dynamic> json) {
    return UserDetailsResponseModel(
      message: json['message'],
      userDetail: json['userDetail'] != null
          ? UserDetail.fromJson(json['userDetail'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'userDetail': userDetail?.toJson(),
    };
  }
}

class UserDetail {
  final int? id;
  final int? userId;
  final String? religion;
  final String? community;
  final String? relationshipStatus;
  final String? country;
  final String? state;
  final String? city;
  final String? educationCourse;
  final String? educationCollegeName;
  final String? educationCollegePlace;
  final String? working;
  final String? jobRole;
  final String? companyName;
  final String? workplace;
  final String? passions;
  final String? profileFor;
  final String? aboutMe;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  UserDetail({
    this.id,
    this.userId,
    this.religion,
    this.community,
    this.relationshipStatus,
    this.country,
    this.state,
    this.city,
    this.educationCourse,
    this.educationCollegeName,
    this.educationCollegePlace,
    this.working,
    this.jobRole,
    this.companyName,
    this.workplace,
    this.passions,
    this.profileFor,
    this.aboutMe,
    this.createdAt,
    this.updatedAt,
  });

  factory UserDetail.fromJson(Map<String, dynamic> json) {
    return UserDetail(
      id: json['id'],
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
      passions: json['passions'],
      profileFor: json['profile_for'],
      aboutMe: json['about_me'],
      createdAt: json['created_at'] != null
          ? DateTime.parse(json['created_at'])
          : null,
      updatedAt: json['updated_at'] != null
          ? DateTime.parse(json['updated_at'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
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
      'passions': passions,
      'profile_for': profileFor,
      'about_me': aboutMe,
      'created_at': createdAt?.toIso8601String(),
      'updated_at': updatedAt?.toIso8601String(),
    };
  }
}
