class UploadImageRequestModel {
  final int userId;

  UploadImageRequestModel({
    required this.userId,
  });

  factory UploadImageRequestModel.fromJson(Map<String, dynamic> json) {
    return UploadImageRequestModel(
      userId: json['user_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
    };
  }
}
