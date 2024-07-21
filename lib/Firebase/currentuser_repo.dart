import 'dart:convert';
import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:mere_maahi_dummy/Firebase/userfech_model.dart';
import 'package:mere_maahi_dummy/config/config.dart';
import 'package:mere_maahi_dummy/infrastructure/api_services/api_services.dart';
import 'package:mere_maahi_dummy/models/get_profile_response_model/get_profile_response_model.dart';

UserFetchModel? userAllDetails;
int? userAccountId;

class CurrentUserRepo {
  Future<void> fetchuserdatas() async {
    // userAllDetails = null;
    // log(userAccountId.toString());
    // try {
    //   final response = await Dio().post(Config.getProfile,
    //       data: {
    //         "user_id": userAccountId,
    //       },
    //       options: Options(contentType: "application/json"));

    //   if (response.statusCode == 200 || response.statusCode == 201) {
    //     GetDetailResponseModel result =
    //         GetDetailResponseModel.fromJson(response.data);

    //     userAllDetails = UserFetchModel(
    //         dob: result.data.dob,
    //         email: result.data.email,
    //         gender: result.data.gender,
    //         name: result.data.firstName,
    //         profilePic: result.data.profileImage ?? '');

    //     // print(userAllDetails.profilePic);
    //   } else {
    //     print('sdffkjshkfjsd');
    //   }
    // } catch (e) {
    //   log(e.toString());
    // }

    try {
      // User? user;
      // user = FirebaseAuth.instance.currentUser;

      final data = await FirebaseFirestore.instance
          .collection('userDetails')
          .doc("0NVrhU6xHVcIOlQj6GNwhMhuVgq2")
          .get();
      final theUser = data.data();
      userAllDetails = UserFetchModel(
          dob: theUser!['dob'],
          email: theUser['email'],
          gender: theUser['gender'],
          name: theUser['username'],
          profilePic: theUser['userProfile']);
    } catch (e) {
      log('Error fetching user data: $e');
    }
  }
}
