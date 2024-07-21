class GetProfileRequestModel {
  final int userId;

  GetProfileRequestModel({
    required this.userId,
  });

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
    };
  }
}
