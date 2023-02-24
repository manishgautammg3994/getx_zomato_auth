library sign_in;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/async_button.dart';
part './widgets/illustration_image.dart';
part './widgets/boldmid_title.dart';
part './widgets/continue_text.dart';
part './widgets/continue_button.dart';
part './widgets/footer_policy_txt_btn.dart';
part './widgets/button/google_button.dart';
part './widgets/button/vert_more_menu.dart';
part './widgets/text_form_phone.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController? phoneController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        reverse: true,
        shrinkWrap: true,
        scrollDirection:
            (MediaQuery.of(context).orientation == Orientation.portrait)
                ? Axis.vertical
                : Axis.horizontal,
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              width: Get.width,
              height: Get.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildIllustration(),
                  SizedBox(
                    height: Get.height / 38,
                  ),
                  _buildTitle(),
                  SizedBox(
                    height: Get.height / 30, //change this
                  ),
                  _ContinueText(
                    midText: "Log in or Sign up",
                  ),
                  SizedBox(
                    height: Get.height / 30, //change this
                  ),
                  SizedBox(
                    height: Get.height / 30, //change this
                  ),
                  conuntry_phone_textform(phoneController),
                  SizedBox(
                    height: Get.height / 30, //change this
                  ),
                  _ContinueButton(
                    isLoading: false,
                    onPressed: () {
                      // if (!phoneController!.value.text.isEmpty) {
                      //   Get.toNamed(
                      //     "/otp",
                      //     parameters: {
                      //       'phone_number': phoneController!.value.text
                      //     },
                      //   );
                      // }
                    },

                    // isLoading: controller.isLoading.value,
                    // onPressed: () => controller.signIn(),
                  ),
                  /////
                  ///
                  ///
                  ///
                  ///
                  ///

                  SizedBox(
                    height: Get.height / 30, //change this
                  ),

                  _ContinueText(
                    midText: "or",
                  ),
                  _buildOtherAuthProvider(),
                  SizedBox(
                    height: Get.height / 30, //change this
                  ),
                  Spacer(),
                  _footer_policy_btn(
                    onPressedTS: () {},
                  ),
                ],
              ),
            ),
          ]))
        ],
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     extendBodyBehindAppBar: true,
  //     body: CustomScrollView(
  //        scrollDirection:
  //         (MediaQuery.of(context).orientation == Orientation.portrait)
  //             ? Axis.vertical
  //             : Axis.horizontal,
  //       :SliverChildListDelegate([
  //           _buildIllustration(),
  //           SizedBox(
  //             height: Get.height / 38,
  //           ),
  //           _buildTitle(),
  //           SizedBox(
  //             height: Get.height / 30, //change this
  //           ),
  //           _ContinueText(
  //             midText: "Log in or Sign up",
  //           ),
  //           SizedBox(
  //             height: Get.height / 30, //change this
  //           ),

  //           //////////////////
  //           ///
  //           ///
  //           ///
  //           ///
  //           ///
  //           /////////////////
  //           ///
  //           ///

  //           SizedBox(
  //             height: Get.height / 30, //change this
  //           ),
  //           _ContinueButton(
  //             isLoading: false,
  //             onPressed: () {
  //               Get.to(() => OTPScreeen());
  //             },

  //             // isLoading: controller.isLoading.value,
  //             // onPressed: () => controller.signIn(),
  //           ),
  //           /////
  //           SizedBox(
  //             height: Get.height / 30, //change this
  //           ),

  //           _ContinueText(
  //             midText: "or",
  //           ),
  //           _buildOtherAuthProvider(),
  //           SizedBox(
  //             height: Get.height / 30, //change this
  //           ),
  //           Spacer(),
  //           _footer_policy_btn(
  //             onPressedTS: () {},
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  Widget _buildOtherAuthProvider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _GoogleButton(onPressed: () {} //=> controller.signInWithGoogle(),
            ),
        _VertMoreButton(
            onPressed: () {} // => controller.signInWithPhoneNumber(),
            ),
      ],
    );
  }
}
