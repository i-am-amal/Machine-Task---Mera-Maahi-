import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:mere_maahi_dummy/config/config.dart';
import 'package:mere_maahi_dummy/infrastructure/api_failures/api_failures.dart';
import 'package:mere_maahi_dummy/models/edit_profile_request_model/edit_profile_request_model.dart';
import 'package:mere_maahi_dummy/models/edit_profile_response_model/edit_profile_response_mode.dart';
import 'package:mere_maahi_dummy/models/forget_password_request_model/forget_password_request_model.dart';
import 'package:mere_maahi_dummy/models/forget_password_response_model/forget_password_response_model.dart';
import 'package:mere_maahi_dummy/models/get_profile_request_model/get_profile_request_model.dart';
import 'package:mere_maahi_dummy/models/get_profile_response_model/get_profile_response_model.dart';
import 'package:mere_maahi_dummy/models/google_login_request_model/google_login_request_model.dart';
import 'package:mere_maahi_dummy/models/google_login_response_model/google_login_response_model.dart';
import 'package:mere_maahi_dummy/models/logout_request_model/logout_request_model.dart';
import 'package:mere_maahi_dummy/models/logout_response_model/logout_response_model.dart';
import 'package:mere_maahi_dummy/models/upload_image_request_model/upload_image_request_model.dart';
import 'package:mere_maahi_dummy/models/upload_image_response_model/upload_image_response_model.dart';
import 'package:mere_maahi_dummy/models/user_details_request_model/user_details_request_model.dart';
import 'package:mere_maahi_dummy/models/user_details_response_model/user_details_response_model.dart';
import 'package:mere_maahi_dummy/models/user_login_request_model/user_login_request_model.dart';
import 'package:mere_maahi_dummy/models/user_login_response_model/user_login_response_model.dart';
import 'package:mere_maahi_dummy/models/user_request_model.dart/user_request_model.dart';
import 'package:mere_maahi_dummy/models/user_response_model.dart/user_response_model.dart';
import 'package:mere_maahi_dummy/models/verifyotp_request_model/verifyotp_request_model.dart';
import 'package:mere_maahi_dummy/models/verifyotp_response_model/verify_otp_response_model.dart';

class ApiServices {
  final dio = Dio();
//-----------------userRegister-------------------//

  Future<String?> userRegister(UserRequest request) async {
    try {
      final response = await dio.post(
        Config.userRegister,
        // headers: <String, String>{
        //   'Content-Type': 'application/json; charset=UTF-8',
        // },
        data: jsonEncode(request.toMap()),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        // UserRegisterResponseModel result =
        //     UserRegisterResponseModel.fromJson(response.data);
        return null;
      } else {
        return ('Something went wrong... Please Try again later..');
      }
    } catch (e) {
      log(e.toString());
      return ('Something went wrong... Please Try again later..');
    }
  }

  //-----------------verifyOtp-------------------//

  Future<Either<ApiFailures, VerifyOtpResponseModel>> verifyOtp(
      VerifyOtpRequestModel request) async {
    try {
      final response = await dio.post(
        Config.verifyOtp,
        // headers: <String, String>{
        //   'Content-Type': 'application/json; charset=UTF-8',
        // },
        data: jsonEncode(request.toJson()),
      );

      if (response.statusCode == 200) {
        VerifyOtpResponseModel result =
            VerifyOtpResponseModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure(
            errorMessage: 'Something went wrong... Please Try again later..'));
      }
    } catch (e) {
      return left(const ApiFailures.clientFailure(
          errorMessage: 'OOPS.. Something went wrong..'));
    }
  }
  //-----------------ForgetPassword-------------------//

  Future<Either<ApiFailures, ForgetPasswordResponseModel>> forgetPassword(
      ForgetPasswordRequestModel request) async {
    try {
      final response = await dio.post(
        Config.forgetPassword,
        // headers: <String, String>{
        //   'Content-Type': 'application/json; charset=UTF-8',
        // },
        data: jsonEncode(request.toJson()),
      );

      if (response.statusCode == 200) {
        ForgetPasswordResponseModel result =
            ForgetPasswordResponseModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure(
            errorMessage: 'Something went wrong... Please Try again later..'));
      }
    } catch (e) {
      return left(const ApiFailures.clientFailure(
          errorMessage: 'OOPS.. Something went wrong..'));
    }
  }
  //-----------------userLogin-------------------//

  Future<(String?, UserLoginResponseModel?)> userLogin(
      UserLoginRequestModel request) async {
    try {
      final response = await dio.post(
        Config.userLogin,
        // headers: <String, String>{
        //   'Content-Type': 'application/json; charset=UTF-8',
        // },
        data: jsonEncode(request.toJson()),
      );

      if (response.statusCode == 200) {
        UserLoginResponseModel result =
            UserLoginResponseModel.fromJson(response.data);
        return (null, result);
      } else {
        return ('Something went wrong... Please Try again later..', null);
      }
    } catch (e) {
      return ('Something went wrong... Please Try again later..', null);
    }
  }

  //-----------------GoogleLogin-------------------//

  Future<Either<ApiFailures, GoogleLoginResponseModel>> googleLogin(
      GoogleLoginRequestModel request) async {
    try {
      final response = await dio.post(
        Config.googleLogin,
        // headers: <String, String>{
        //   'Content-Type': 'application/json; charset=UTF-8',
        // },
        data: jsonEncode(request.toJson()),
      );

      if (response.statusCode == 200) {
        GoogleLoginResponseModel result =
            GoogleLoginResponseModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure(
            errorMessage: 'Something went wrong... Please Try again later..'));
      }
    } catch (e) {
      return left(const ApiFailures.clientFailure(
          errorMessage: 'OOPS.. Something went wrong..'));
    }
  }
  //-----------------uploadImage-------------------//

  Future<Either<ApiFailures, UploadImageResponseModel>> uploadImage(
      UploadImageRequestModel request) async {
    try {
      final response = await dio.post(
        Config.uploadImage,
        // headers: <String, String>{
        //   'Content-Type': 'application/json; charset=UTF-8',
        // },
        data: jsonEncode(request.toJson()),
      );

      if (response.statusCode == 200) {
        UploadImageResponseModel result =
            UploadImageResponseModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure(
            errorMessage: 'Something went wrong... Please Try again later..'));
      }
    } catch (e) {
      return left(const ApiFailures.clientFailure(
          errorMessage: 'OOPS.. Something went wrong..'));
    }
  }

  //-----------------userDetails-------------------//

  Future<Either<ApiFailures, UserDetailsResponseModel>> userDetails(
      UserDetailsRequestModel request) async {
    try {
      final response = await dio.post(
        Config.userDetails,
        // headers: <String, String>{
        //   'Content-Type': 'application/json; charset=UTF-8',
        // },
        data: jsonEncode(request.toJson()),
      );

      if (response.statusCode == 200) {
        UserDetailsResponseModel result =
            UserDetailsResponseModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure(
            errorMessage: 'Something went wrong... Please Try again later..'));
      }
    } catch (e) {
      return left(const ApiFailures.clientFailure(
          errorMessage: 'OOPS.. Something went wrong..'));
    }
  }

  //-----------------getProfile-------------------//

  Future<Either<ApiFailures, GetDetailResponseModel>> getProfile(
      GetProfileRequestModel request) async {
    try {
      final response = await dio.post(
        Config.getProfile,
        // headers: <String, String>{
        //   'Content-Type': 'application/json; charset=UTF-8',
        // },
        data: jsonEncode(request.toJson()),
      );

      if (response.statusCode == 200) {
        GetDetailResponseModel result =
            GetDetailResponseModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure(
            errorMessage: 'Something went wrong... Please Try again later..'));
      }
    } catch (e) {
      return left(const ApiFailures.clientFailure(
          errorMessage: 'OOPS.. Something went wrong..'));
    }
  }

  //-----------------editProfile-------------------//

  Future<Either<ApiFailures, EditProfileResponseModel>> editProfile(
      EditProfileRequestModel request) async {
    try {
      final response = await dio.post(
        Config.editprofile,
        // headers: <String, String>{
        //   'Content-Type': 'application/json; charset=UTF-8',
        // },
        data: jsonEncode(request.toMap()),
      );

      if (response.statusCode == 200) {
        EditProfileResponseModel result =
            EditProfileResponseModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure(
            errorMessage: 'Something went wrong... Please Try again later..'));
      }
    } catch (e) {
      return left(const ApiFailures.clientFailure(
          errorMessage: 'OOPS.. Something went wrong..'));
    }
  }

  //-----------------logout-------------------//

  Future<Either<ApiFailures, LogoutResponseModel>> logOut(
      LogoutRequestModel request) async {
    try {
      final response = await dio.post(
        Config.logOut,
        // headers: <String, String>{
        //   'Content-Type': 'application/json; charset=UTF-8',
        // },
        data: jsonEncode(request.toMap()),
      );

      if (response.statusCode == 200) {
        LogoutResponseModel result =
            LogoutResponseModel.fromJson(response.data);
        return right(result);
      } else {
        return left(const ApiFailures.serverFailure(
            errorMessage: 'Something went wrong... Please Try again later..'));
      }
    } catch (e) {
      return left(const ApiFailures.clientFailure(
          errorMessage: 'OOPS.. Something went wrong..'));
    }
  }
}
