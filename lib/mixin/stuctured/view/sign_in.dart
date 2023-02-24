library sign_in;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/async_button.dart';
import 'otp_screen.dart';
part '../widgets/continue_text.dart';
part '../widgets/illustration_image.dart';
part '../widgets/boldmid_title.dart';
part '../widgets/button/google_button.dart';
part '../widgets/button/continue_button.dart';
part '../widgets/button/vert_more_menu.dart';
part '../widgets/footer_txt_btn/footer_policy_txt_btn.dart';
part '../widgets/text_form_phone.dart';

class SignInScreen extends StatefulWidget {
  //<SignInController>
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        // const SizedBox(), //todo
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
        //textform
        conuntry_phone_textform(),
        //button
        SizedBox(
          height: Get.height / 30, //change this
        ),
        _ContinueButton(
          isLoading: false,
          onPressed: () {
            Get.to(() => OTPScreen());
          },

          // isLoading: controller.isLoading.value,
          // onPressed: () => controller.signIn(),
        ),
        SizedBox(
          height: Get.height / 30, //change this
        ),
        // _buildContinueButton(),
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
      ]),
    );
  }

  // Widget _buildContinueButton() {
  //   return Obx(
  //     () => _ContinueButton(
  //       isLoading: false, onPressed: () {},

  //       // isLoading: controller.isLoading.value,
  //       // onPressed: () => controller.signIn(),
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
