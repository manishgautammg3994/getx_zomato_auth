library sign_in;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/async_button.dart';
part '../widgets/continue_text.dart';
part '../widgets/illustration_image.dart';
part '../widgets/boldmid_title.dart';
part '../widgets/button/google_button.dart';
part '../widgets/button/continue_button.dart';
part '../widgets/button/vert_more_menu.dart';
part '../widgets/footer_txt_btn/footer_policy_txt_btn.dart';


class SignInScreen extends GetView {
  //<SignInController>
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16 * 2),
            child: Column(
              children: [
                const SizedBox(), //todo
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

                //textform

                //button
                _buildContinueButton(),
                _ContinueText(
                  midText: "or",
                ),
                _buildOtherAuthProvider(), 
                const Spacer(flex: 2),
                _footer_policy_btn(onPressedTS:(){} ,),
              ],
            ),
          ), // TODO
        ),
      ),
    );
  }

  Widget _buildContinueButton() {
    return Obx(
      () => _ContinueButton(
        isLoading: controller.isLoading.value,
        onPressed: () => controller.signIn(),
      ),
    );
  }

  Widget _buildOtherAuthProvider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _GoogleButton(
          onPressed: () => controller.signInWithGoogle(),
        ),
        _VertMoreButton(
          onPressed: () => controller.signInWithPhoneNumber(),
        ),
      ],
    );
  }
}
