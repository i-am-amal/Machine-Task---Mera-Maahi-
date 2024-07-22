class UserDetailsRequestModel {
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
  final String passions;
  final String profileFor;
  final String aboutMe;
  final int userId;

  UserDetailsRequestModel({
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
    required this.passions,
    required this.profileFor,
    required this.aboutMe,
    required this.userId,
  });

  factory UserDetailsRequestModel.fromJson(Map<String, dynamic> json) {
    return UserDetailsRequestModel(
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
      userId: json['user_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
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
      'user_id': userId,
    };
  }
}
