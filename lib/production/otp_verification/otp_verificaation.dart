library authentication_view;

import 'package:get/get.dart';
import 'package:flutter/material.dart';
// import 'package:pinput/pinput.dart';
import 'package:uidesign/production/signInUp/widgets/async_button.dart';

import 'controllers/authentication_controller.dart';
part './widgets/timer.dart';

class OTPScreeen extends GetView<OTPController> {
  const OTPScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    const length = 6;
    const borderColor = Color.fromRGBO(22, 22, 22, 1);
    const errorColor = Color.fromRGBO(255, 234, 238, 1);
    const fillColor = Color.fromRGBO(222, 231, 240, .57);
    // final defaultPinTheme = PinTheme(
    //   width: 56,
    //   height: 60,
    //   decoration: BoxDecoration(
    //     color: fillColor,
    //     borderRadius: BorderRadius.circular(8),
    //     border: Border.all(color: Colors.grey),
    //   ),
    // );
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.white,
            title: Text(
              "OTP Verification",
              style: TextStyle(color: Colors.black),
            )),
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
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, left: 30, right: 30),
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: ' ',
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'We have sent a verification code to\n',
                              ),
                              TextSpan(text: "\n"), //todo change
                              TextSpan(
                                  text: ' +91- ${controller.phoneNumber}',
                                  style: TextStyle(
                                      fontFamily: "GothicA1",
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        // child: Pinput(
                        //   separator: SizedBox(width: 25),
                        //   length: length,
                        //   // controller: controller,
                        //   // focusNode: focusNode,
                        //   defaultPinTheme: defaultPinTheme,
                        //   // onCompleted: (pin) {
                        //   //   setState(() => showError = pin != '5555');
                        //   // },
                        //   focusedPinTheme: defaultPinTheme.copyWith(
                        //     height: 68,
                        //     width: 64,
                        //     decoration: defaultPinTheme.decoration!.copyWith(
                        //       border: Border.all(color: borderColor),
                        //     ),
                        //   ),
                        //   errorPinTheme: defaultPinTheme.copyWith(
                        //     decoration: BoxDecoration(
                        //       color: errorColor,
                        //       borderRadius: BorderRadius.circular(8),
                        //     ),
                        //   ),
                        // ),
                        // OTPTextField(
                        //   length: _pinlength,
                        //   controller: controller,
                        //   width: MediaQuery
                        //       .of(context)
                        //       .size
                        //       .width,
                        //   textFieldAlignment: MainAxisAlignment
                        //       .spaceEvenly,
                        //   fieldWidth: 40,
                        //   fieldheight: 40,
                        //   fieldStyle: FieldStyle.box,
                        //   style: TextStyle(
                        //       fontSize: 20
                        //   ),
                        //   onCompleted: (pin) {
                        //   /*  setState(() {
                        //       iscontinoueStatus = true;
                        //     });*/
                        //   },
                        //   uncomplete: () {
                        //     /*if (iscontinoueStatus == true)
                        //       setState(() {
                        //         iscontinoueStatus = false;
                        //       });*/
                        //   },
                        // ),
                      ),
                    ),
                  ]),
              SizedBox(
                height: Get.height / 80,
              ),
              Center(
                child: AsyncButton(
                  loadingchild: _ResendButton(),
                  style: ElevatedButton.styleFrom(
                      elevation: 1,
                      minimumSize: Size(double.infinity, (Get.height / 15) + 5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  onPressed: () {},
                  child: const Text("Verify"),
                  isLoading: true,
                ).paddingSymmetric(horizontal: 150),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                        text: "Try other login methods",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold)),
                    // TextSpan(
                    //   text: ' Resent Now',
                    //   // style: (() {
                    //   //   if (value.istimerDone == true) {
                    //   //     return TextStyle(
                    //   //         color: HexColor("${resent_red}"));
                    //   //   } else {
                    //   //     return TextStyle(
                    //   //         color: HexColor("${resentdefault}"));
                    //   //   }
                    //   // }())
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: CircularProgressIndicator.adaptive(),
              )
            ]))
          ],
        ));
  }
}
