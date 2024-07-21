class ApiServices{

//  static Future<Either<ApiFailures, PhoneNumberResponseModel>> phoneNumberLogin(
//       PhoneNumberRequestModel request) async {
//     try {
//       final response = await http.post(
//         Uri.parse(Config.phoneApi),
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: jsonEncode(request.toJson()),
//       );
//       if (response.statusCode == 200) {
//         Map<String, dynamic> jsonMap = jsonDecode(response.body);
//         PhoneNumberResponseModel result =
//             PhoneNumberResponseModel.fromJson(jsonMap);
//         return right(result);
//       } else {
//         return left(const ApiFailures.serverFailure(
//             errorMessage: 'Something went wrong... Please Try again later..'));
//       }
//     } catch (e) {
//       return left(const ApiFailures.clientFailure(
//           errorMessage: 'OOPS.. Something went wrong..'));
//     }
//   }



}