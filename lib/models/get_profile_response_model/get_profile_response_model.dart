import 'dart:convert';

class GetDetailResponseModel {
  bool status;
  int code;
  UserData data;

  GetDetailResponseModel({
    required this.status,
    required this.code,
    required this.data,
  });

  factory GetDetailResponseModel.fromJson(String str) =>
      GetDetailResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GetDetailResponseModel.fromMap(Map<String, dynamic> json) =>
      GetDetailResponseModel(
        status: json["status"],
        code: json["code"],
        data: UserData.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "code": code,
        "data": data.toMap(),
      };
}

class UserData {
  int id;
  String firstName;
  String lastName;
  String email;
  String gender;
  String dob;
  String profileImage;
  String profile;
  String thumbImage;
  UserDetail userDetail;
  List<ImageDetail> images;

  UserData({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.gender,
    required this.dob,
    required this.profileImage,
    required this.profile,
    required this.thumbImage,
    required this.userDetail,
    required this.images,
  });

  factory UserData.fromMap(Map<String, dynamic> json) => UserData(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        gender: json["gender"],
        dob: json["dob"],
        profileImage: json["profile_image"],
        profile: json["profile"],
        thumbImage: json["thumb_image"],
        userDetail: UserDetail.fromMap(json["user_deatil"]),
        images: List<ImageDetail>.from(
            json["images"].map((x) => ImageDetail.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "gender": gender,
        "dob": dob,
        "profile_image": profileImage,
        "profile": profile,
        "thumb_image": thumbImage,
        "user_deatil": userDetail.toMap(),
        "images": List<dynamic>.from(images.map((x) => x.toMap())),
      };
}

class UserDetail {
  int id;
  int userId;
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
  String createdAt;
  String updatedAt;

  UserDetail({
    required this.id,
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
    required this.passions,
    required this.profileFor,
    required this.aboutMe,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserDetail.fromMap(Map<String, dynamic> json) => UserDetail(
        id: json["id"],
        userId: json["user_id"],
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
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
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
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}

class ImageDetail {
  int id;
  int userId;
  int userDetailId;
  String image;
  String thumbImage;
  String createdAt;
  String updatedAt;

  ImageDetail({
    required this.id,
    required this.userId,
    required this.userDetailId,
    required this.image,
    required this.thumbImage,
    required this.createdAt,
    required this.updatedAt,
  });

  factory ImageDetail.fromMap(Map<String, dynamic> json) => ImageDetail(
        id: json["id"],
        userId: json["user_id"],
        userDetailId: json["user_detail_id"],
        image: json["image"],
        thumbImage: json["thumb_image"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "user_id": userId,
        "user_detail_id": userDetailId,
        "image": image,
        "thumb_image": thumbImage,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
