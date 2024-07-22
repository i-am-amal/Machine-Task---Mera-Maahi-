// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:developer';

import 'package:dartz/dartz.dart' show Either;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mere_maahi_dummy/Firebase/currentuser_repo.dart';

import 'package:mere_maahi_dummy/Screens/Account/widgets/bottom_container.dart';
import 'package:mere_maahi_dummy/Screens/Account/widgets/top_container.dart';
import 'package:mere_maahi_dummy/Screens/Account/widgets/userdetails.dart';
import 'package:mere_maahi_dummy/Screens/OnboardingScreen/onboardingScreen.dart';
import 'package:mere_maahi_dummy/infrastructure/api_failures/api_failures.dart';
import 'package:mere_maahi_dummy/infrastructure/api_services/api_services.dart';
import 'package:mere_maahi_dummy/main.dart';
import 'package:mere_maahi_dummy/models/logout_request_model/logout_request_model.dart';
import 'package:mere_maahi_dummy/models/logout_response_model/logout_response_model.dart';
import 'package:url_launcher/url_launcher.dart';

bool swith = false;
bool swithNottification1 = false;

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

void alert(context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Text('Some Error Found'),
        actions: [
          ElevatedButton(
              onPressed: () => Navigator.pop(context), child: Text('Ok'))
        ],
      );
    },
  );
}

Show_DiloagBox(context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Are you sure ?'),
          content: const Text('Are sure you want to log out'),
          actions: [
            TextButton(
                style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelMedium),
                onPressed: () async {
                  log(userAccountId.toString());
                  final request = LogoutRequestModel(
                      userId: userAccountId ?? 0,
                      token: userToken ?? '',
                      type: "android");

                  Either<ApiFailures, LogoutResponseModel> response =
                      await ApiServices().logOut(request);
                  // Get.to(const SignUpScreen(),transition: Transition.rightToLeftWithFade);

                  response.fold(
                    (l) {
                      print(l);
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Something went wrong!')));
                    },
                    (r) {
                      log(r.toString());

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) =>
                                  const OnboardingThreeScreen()));
                    },
                  );

                  // FirebaseAuth.instance.signOut();

                  //After SignOut we easily Navigate to LoginScreen
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (builder) => const OnboardingThreeScreen()));
                },
                child: const Text('Yes')),
            TextButton(
                style: TextButton.styleFrom(
                    textStyle: Theme.of(context).textTheme.labelMedium),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('No'))
          ],
        );
      });
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 236, 231),
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            UserDetailsContainer(),
            CustomTopContainerTiles(),
            CustomBottomContainerTile()
          ],
        ),
      ),
    );
  }

  void _launchTCURL() async {
    Uri url = Uri.parse(
        'https://www.freeprivacypolicy.com/live/4151c397-8eef-442a-95da-48c3275145b2');
    if (await launchUrl(url)) {
      //dialer opened
    } else {
      SnackBar(content: Text("couldn't launch the page"));
    }
  }
}
