import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'stuctured/view/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: SignInScreen());
  }
}

// class SignInScreen extends StatefulWidget {
//   const SignInScreen({super.key});

//   @override
//   State<SignInScreen> createState() => _SignInScreenState();
// }

// class _SignInScreenState extends State<SignInScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           Stack(children: [
//             Container(
//               height: Get.height / 2.3,
//               width: double.infinity, //Don't use Get.width,
//               child: Image.network(
//                 "https://www.shutterstock.com/image-photo/las-vegas-nv-september-22-600w-487851388.jpg",
//                 fit: BoxFit.fill,
//               ),
//             )
//           ]),
//           SizedBox(
//             height: Get.height / 38, //change this
//           ),
//           Center(
//               child: RichText(
//             textAlign: TextAlign.center,
//             text: TextSpan(
//               text: "India's #1 Food Delivery \n and Dining App",
//               style: TextStyle(
//                   overflow: TextOverflow.visible,
//                   fontSize: 30, //set this dynamically,
//                   // fontFamily: ,

//                   fontWeight: FontWeight.bold),
//             ),
//           )),
//           SizedBox(
//             height: Get.height / 30,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Expanded(child: Divider()),
//                     SizedBox(
//                       width: Get.width / 100,
//                     ),
//                     Center(
//                         child: RichText(
//                       text: TextSpan(text: "Login OR SignUp"),
//                     )),
//                     SizedBox(
//                       width: Get.width / 100,
//                     ),
//                     Expanded(child: Divider())
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           //padding
//           SizedBox(
//             height: Get.height / 100,
//           ),
//           Container(
//             height: Get.height / 10,
//             width: double.infinity,
//             child: Row(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                       // borderRadius: BorderRadius.circular(20),
//                       border: Border.all(color: Colors.grey)),
//                   child: Text("🇮🇳"),
//                 ),
//                 Expanded(
//                     child: TextField(
//                   keyboardType: TextInputType.phone,
//                   enabled: true,
//                   decoration: InputDecoration(
//                       hintText: "9876543210",
//                       prefix: Text("+91"),
//                       prefixStyle: TextStyle(fontWeight: FontWeight.bold),
//                       isDense: true,
//                       border: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(width: 1.5, color: Colors.grey)),
//                       errorBorder: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(width: 1.0, color: Colors.grey)),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide:
//                               BorderSide(width: 1.0, color: Colors.grey))),
//                 ))
//               ],
//             ).paddingSymmetric(horizontal: 8.0),
//           )
//         ],
//       ),
//     );
//   }
// }
