library sign_in;

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../widgets/async_button.dart';
part '../widgets/illustration_image.dart';

part '../widgets/boldmid_title.dart';
part '../widgets/continue_text.dart';
part '../widgets/continue_button.dart';
part '../widgets/button/google_button.dart';
part '../widgets/button/vert_more_menu.dart';
part '../widgets/footer_policy_txt_btn.dart';

class SignInScreen extends StatefulWidget {
  final bool exitFromApp;

  const SignInScreen(
      {super.key, required this.exitFromApp}); //TODO add@required

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final FocusNode _phoneFocus = FocusNode();

  final TextEditingController _phoneController = TextEditingController();

  String? _countryDialCode;
  bool _canExit = GetPlatform.isWeb ? true : false;

//////2

  @override
  void initState() {
    super.initState();

    // _countryDialCode = Get.find<AuthController>().getUserCountryCode().isNotEmpty ? Get.find<AuthController>().getUserCountryCode()
    //     : CountryCode.fromCountryCode(Get.find<SplashController>().configModel.country).dialCode;
    // _phoneController.text =  Get.find<AuthController>().getUserNumber() ?? '';
    // _passwordController.text = Get.find<AuthController>().getUserPassword() ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ////3
        // if(widget.exitFromApp) {
        //   if (_canExit) {
        //     if (GetPlatform.isAndroid) {
        //       SystemNavigator.pop();
        //     } else if (GetPlatform.isIOS) {
        //       exit(0);
        //     } else {
        //       Navigator.pushNamed(context, RouteHelper.getInitialRoute());
        //     }
        //     return Future.value(false);
        //   } else {
        //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //       content: Text('back_press_again_to_exit'.tr, style: TextStyle(color: Colors.white)),
        //       behavior: SnackBarBehavior.floating,
        //       backgroundColor: Colors.green,
        //       duration: Duration(seconds: 2),
        //       margin: EdgeInsets.all(Dimensions.PADDING_SIZE_SMALL),
        //     ));
        //     _canExit = true;
        //     Timer(Duration(seconds: 2), () {
        //       _canExit = false;
        //     });
        //     return Future.value(false);
        //   }
        // }else {
        //   return true;
        // }
        return true; //todo remove this and uncomment above ////4
      },
      child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 650 // || !kIsWeb
            ) {
          ///mobile output
          return Scaffold(
              extendBodyBehindAppBar: true,
              body: Scrollbar(
                  child: SingleChildScrollView(
                reverse: true,
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildIllustration(
                        height: constraints.maxHeight / 2.15,
                        width: constraints.maxWidth),
                    SizedBox(
                      height: constraints.maxHeight / 38,
                    ),
                    _buildTitle(
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                        fontSize: 24),
                    SizedBox(
                      height: constraints.maxHeight / 32,
                    ),
                    _ContinueText(
                      color: Colors.grey,
                      endintent: constraints.maxWidth / 80,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                      intent: constraints.maxWidth / 80,
                      midText: 'Log in or sign up',
                      thickness: 1,
                    ),
                    SizedBox(
                      height: constraints.maxHeight / 35,
                    ),
                    /////////////phoneBox///////////
                    SizedBox(
                      height: constraints.maxHeight / 35,
                    ),
                    ////continue Button
                    _ContinueButton(
                      fixedchild: Text(
                        "Continue",
                        softWrap: true,
                      ),
                      horizontalPadding: constraints.maxWidth / 20,
                      isLoading: false,
                      loadingchild: CircularProgressIndicator(),
                      minimumSize: Size(constraints.maxWidth,
                          (constraints.maxHeight / 15) + 5),
                      onPressed: () {},
                      elevation: 1,
                      primary: Colors.red,
                    ),
                    SizedBox(
                      height: constraints.maxHeight / 35,
                    ),
                    _ContinueText(
                      color: Colors.grey,
                      endintent: constraints.maxWidth / 80,
                      fontSize: 16,
                      fontWeight: FontWeight.w200,
                      intent: constraints.maxWidth / 80,
                      midText: 'or',
                      thickness: 1,
                    ),
                    SizedBox(
                      height: constraints.maxHeight / 35,
                    ),
                    _buildOtherAuthProvider(),
                    SizedBox(
                      height: constraints.maxHeight / 35,
                    ),
                    // Spacer(),
                    Wrap(children: [
                      _footer_policy_btn(
                        onPressedTS: () {},
                      ),
                    ]),
                  ],
                ),
              )));
        } else {
          return Scaffold(
              ////5

              // appBar: ResponsiveHelper.isDesktop(context)
              //     ? WebMenuBar()
              //     : !widget.exitFromApp
              //         ? AppBar(
              //             leading: IconButton(
              //               onPressed: () => Get.back(),
              //               icon: Icon(Icons.arrow_back_ios_rounded,
              //                   color:
              //                       Theme.of(context).textTheme.bodyText1.color),
              //             ),
              //             elevation: 0,
              //             backgroundColor: Colors.transparent)
              //         : null,
//////////////////////////////////////////////
              ///
              ///
              ///
              ///
              ///

              body: Scrollbar(
                  child: SingleChildScrollView(
            reverse: true,
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIllustration(
                    height: constraints.maxHeight / 1.75,
                    width: constraints.maxWidth)
              ],
            ),
          ))
////////////////////////////
              // body: Placeholder()

              );

          //desktop and web output
        }
      }),
    );
  }

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
