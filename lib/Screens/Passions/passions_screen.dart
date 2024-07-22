import 'dart:developer';

import 'package:dartz/dartz.dart' show Either;
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
import 'package:mere_maahi_dummy/Screens/ExtraScreen/savebutton.dart';
import 'package:mere_maahi_dummy/Screens/Main/MainScreen.dart';
import 'package:mere_maahi_dummy/Screens/Passions/PassionchipViewItem.dart';
import 'package:mere_maahi_dummy/infrastructure/api_failures/api_failures.dart';
import 'package:mere_maahi_dummy/models/user_details_response_model/user_details_response_model.dart';

import '../../Widget/CustomImageViewer.dart';
import '../../core/utils/image_constant.dart';

class PassionsScreen extends StatefulWidget {
  const PassionsScreen({super.key});

  @override
  State<PassionsScreen> createState() => _PassionsScreenState();
}

class _PassionsScreenState extends State<PassionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 38),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Your interests',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 34,
                  fontFamily: 'Sk-Modernist',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Select a few of your interests and let everyone know what you’re passionate about.',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.699999988079071),
                  fontSize: 14,
                  fontFamily: 'Sk-Modernist',
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              _buildPassionList(),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () async {
                  Either<ApiFailures, UserDetailsResponseModel> response =
                      await saveProfile();
                  // Get.to(const SignUpScreen(),transition: Transition.rightToLeftWithFade);

                  response.fold(
                    (l) {
                      print(l);
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Something went wrong!')));
                    },
                    (r) {
                      log(r.toString());
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => const MainScreen()),
                          (route) => false);
                    },
                  );
                },
                child: Container(
                  width: 295,
                  height: 56,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFE94057),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Continue',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Sk-Modernist',
                        fontWeight: FontWeight.w700,
                        height: 0.09,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///AppBar
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      toolbarHeight: 85,
      leadingWidth: 92,
      leading: Padding(
        padding: const EdgeInsets.only(left: 35.0, top: 25),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 52,
            height: 52,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              color: Colors.red,
            ),
          ),
        ),
      ),
      // actions: [
      //   Padding(
      //     padding: const EdgeInsets.only(top: 12.0, right: 10),
      //     child: TextButton(
      //       onPressed: () {
      //         Navigator.pushAndRemoveUntil(
      //             context,
      //             MaterialPageRoute(builder: (builder) => const MainScreen()),
      //             (route) => false);
      //       },
      //       child: const Text(
      //         'Skip',
      //         style: TextStyle(
      //           color: Color(0xFFE94057),
      //           fontSize: 16,
      //           fontFamily: 'Sk-Modernist',
      //           fontWeight: FontWeight.w700,
      //           height: 0.09,
      //         ),
      //       ),
      //     ),
      //   )
      // ],
    );
  }

  ///Passion List Widget

  Widget _buildPassionList() {
    return const Wrap(
      runSpacing: 15,
      spacing: 15,
      children: [
        PassionChipViewItem(
          avatarsIcons: Icons.camera_alt,
          labels: 'Photography',
        ),
        PassionChipViewItem(
          avatarsIcons: Icons.art_track,
          labels: 'Art',
        ),
        PassionChipViewItem(
          avatarsIcons: Icons.shopping_cart,
          labels: 'Shopping',
        ),
        PassionChipViewItem(
          avatarsIcons: Icons.mic,
          labels: 'Karaoke',
        ),
        PassionChipViewItem(
          avatarsIcons: Icons.swipe_left_alt,
          labels: 'Swimming',
        ),
        PassionChipViewItem(
          avatarsIcons: Icons.ice_skating,
          labels: 'Yoga',
        ),
        PassionChipViewItem(
          avatarsIcons: Icons.cookie_outlined,
          labels: 'Cooking',
        ),
        PassionChipViewItem(
          avatarsIcons: Icons.travel_explore,
          labels: 'Travelling',
        ),
        PassionChipViewItem(
          avatarsIcons: Icons.sports_tennis,
          labels: 'Tennis',
        ),
        PassionChipViewItem(
          avatarsIcons: Icons.run_circle_outlined,
          labels: 'Run',
        ),
        PassionChipViewItem(
          avatarsIcons: Icons.extension_off_outlined,
          labels: 'Extreme',
        ),
        PassionChipViewItem(
          avatarsIcons: Icons.music_note,
          labels: 'Music',
        ),
        PassionChipViewItem(
          avatarsIcons: Icons.local_drink,
          labels: 'Drink',
        ),
        PassionChipViewItem(
          avatarsIcons: Icons.video_collection_outlined,
          labels: 'Video games',
        ),
        PassionChipViewItem(
          avatarsIcons: Icons.extension_off_outlined,
          labels: 'Extreme',
        ),
      ],
    );
  }
}
