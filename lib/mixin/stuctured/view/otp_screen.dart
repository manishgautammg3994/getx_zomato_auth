import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

import '../widgets/async_button.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            "Enter Verification Code",
            style: TextStyle(color: Colors.black),
          )),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          color: Colors.white,
          child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 10,
                  child: Column(
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
                                    text: 'We have sent Verification Code to\n',
                                  ), //todo change
                                  TextSpan(
                                      text: ' +9199999999999',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50, vertical: 10),
                            child: TextFieldPin(
                                // textController: textEditingController,
                                autoFocus: true,
                                codeLength: 6,
                                alignment: MainAxisAlignment.center,
                                defaultBoxSize: 46.0,
                                margin: 10,
                                selectedBoxSize: 46.0,
                                textStyle: TextStyle(fontSize: 16),
                                // defaultDecoration: Decoration()
                                onChange: (code) {
                                  // _onOtpCallBack(code,false);
                                }),
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
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AsyncButton(
                          loadingchild: const CircularProgressIndicator(),
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.maxFinite, 50),
                            textStyle: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1.1,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("Verify"),
                          isLoading: false,
                        ).paddingSymmetric(horizontal: 150),
                        SizedBox(
                          height: 20,
                        ),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style,
                            children: <TextSpan>[
                              TextSpan(
                                  text: "Try Other Login Methods",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold)),
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
                      ]),
                ),
                Expanded(flex: 1, child: Container()),
              ]),
        );
      }),
    );
  }
}
