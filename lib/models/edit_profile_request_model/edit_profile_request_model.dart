import 'dart:convert';

class EditProfileRequestModel {
  String firstName;
  String lastName;
  String email;
  String gender;
  String dob;
  String religion;
  String community;
  String relationshipStatus;
  String country;
  String state;
  String city;
  String educationCourse;
  String educationCollegeName;
  String educationCollegePlace;
  String working;
  String jobRole;
  String companyName;
  String workplace;
  String passions;
  String profileFor;
  String aboutMe;
  List<String> interest;

  EditProfileRequestModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.gender,
    required this.dob,
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
    required this.interest,
  });

  factory EditProfileRequestModel.fromJson(String str) =>
      EditProfileRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory EditProfileRequestModel.fromMap(Map<String, dynamic> json) =>
      EditProfileRequestModel(
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        gender: json["gender"],
        dob: json["dob"],
        religion: json["religion"],
        community: json["community"],
        relationshipStatus: json["relationship_status"],
        country: json["country"],
        state: json["state"],
        city: json["city"],
        educationCourse: json["education_course"],
        educationCollegeName: json["education_college_name"],
        educationCollegePlace: json["education_college_place"],
        working: json["working"],
        jobRole: json["job_role"],
        companyName: json["company_name"],
        workplace: json["workplace"],
        passions: json["passions"],
        profileFor: json["profile_for"],
        aboutMe: json["about_me"],
        interest: List<String>.from(json["interest"].map((x) => x.toString())),
      );

  Map<String, dynamic> toMap() => {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "gender": gender,
        "dob": dob,
        "religion": religion,
        "community": community,
        "relationship_status": relationshipStatus,
        "country": country,
        "state": state,
        "city": city,
        "education_course": educationCourse,
        "education_college_name": educationCollegeName,
        "education_college_place": educationCollegePlace,
        "working": working,
        "job_role": jobRole,
        "company_name": companyName,
        "workplace": workplace,
        "passions": passions,
        "profile_for": profileFor,
        "about_me": aboutMe,
        "interest": List<dynamic>.from(interest.map((x) => x)),
      };
}
