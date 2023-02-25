import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController  extends GetxController implements GetxService {
// final AuthRepo authRepo;
//  AuthController({@required this.authRepo}) {
//     _notification = authRepo.isNotificationActive();
//   }
  ///////1///
  
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final otp = TextEditingController();

  late final String? phoneNumber;

  String? verificationId;
  final isLoading = true.obs;

  final _durationTimeOut = Duration(seconds: 60);
  final isCanResendCode = false.obs;
  final durationCountdown = 0.obs;

  @override
  void onInit() {
    phoneNumber = _getPhoneNumber();
    verifyPhoneNumber();
    // try {
    //   SmsAutoFill().listenForCode();
    // } catch (e) {}

    super.onInit();
  }

  // @override
  // void onClose() {
  //   try {
  //     SmsAutoFill().unregisterListener();
  //   } catch (e) {}
  //   super.onClose();
  // }

  void verifyPhoneNumber() async {
    isLoading.value = true;

    isCanResendCode.value = false;
    String? _phoneNumber = phoneNumber;
    if (phoneNumber != null || phoneNumber!.isNotEmpty) {
      _validateCountdownResendCode();
    }

    if (_phoneNumber != null) {
      // await _auth.verifyPhoneNumber(
      //   phoneNumber: _phoneNumber,
      //   verificationCompleted: (phoneAuthCredential) async {
      //     log("verify phone number : verification completed");
      //     await _auth.signInWithCredential(phoneAuthCredential);

      //     if (registrant != null) {
      //       _saveRegistrantAndGoToHome();
      //     } else {
      //       _goToHome();
      //     }
      //   },
      //   verificationFailed: (FirebaseAuthException e) {
      //     isLoading.value = false;
      //     isCanResendCode.value = true;
      //     Get.snackbar(
      //       "Verification Failed",
      //       e.code,
      //       backgroundColor: Colors.white,
      //       snackPosition: SnackPosition.BOTTOM,
      //     );
      //   },
      //   codeSent: (verificationId, forceResendingToken) async {
      //     log("verify phone number : code success send");
      //     this.verificationId = verificationId;
      //     isLoading.value = false;
      //     _validateCountdownResendCode();
      //   },
      //   codeAutoRetrievalTimeout: (verificationId) {},
      //   timeout: _durationTimeOut,
      // );
    }
  }

  // void verifySmsCode() async {
  //   if (formKey.currentState!.validate() && verificationId != null) {
  //     isLoading.value = true;

  //     try {
  //       await _auth.signInWithCredential(PhoneAuthProvider.credential(
  //           verificationId: verificationId!, smsCode: otp.text));
  //     } catch (e) {
  //       print("invalid code");
  //     } finally {
  //       isLoading.value = false;

  //       if (_auth.currentUser != null) {
  //         /// authentication success
  //         if (registrant != null) {
  //           _saveRegistrantAndGoToHome();
  //         } else {
  //           _goToHome();
  //         }
  //       } else {
  //         /// authentication faileed
  //         Get.snackbar(
  //           "Invalid Code",
  //           "Please enter the correct code",
  //           backgroundColor: Colors.white,
  //           snackPosition: SnackPosition.BOTTOM,
  //         );
  //       }
  //     }
  //   }
  // }

  // void _saveRegistrantAndGoToHome() {
  //   UserServices.addUser(
  //     registrant!,
  //     onSuccess: () => _goToHome(),
  //     onError: (e) => isLoading.value = false,
  //   );
  // }

  // void _goToHome() {
  //   isLoading.value = false;
  //   Get.offAllNamed(Routes.home);
  // }

  void _validateCountdownResendCode() {
    isCanResendCode.value = false;
    var maxDurationInSecond = _durationTimeOut.inSeconds;
    var currentDurationSecond = 0;
    durationCountdown.value = maxDurationInSecond;

    Timer.periodic(Duration(seconds: 1), (timer) {
      currentDurationSecond++;
      if (maxDurationInSecond - currentDurationSecond >= 0) {
        durationCountdown.value = maxDurationInSecond - currentDurationSecond;
      } else {
        isCanResendCode.value = true;
        timer.cancel();
      }
    });
  }

  // Registrant? _getUser() {
  //   try {
  //     return Get.arguments as Registrant?;
  //   } catch (_) {
  //     return null;
  //   }
  // }

  String? _getPhoneNumber() {
    try {
      return Get.parameters['phone_number'];
    } catch (_) {
      return null;
    }
  }
}
