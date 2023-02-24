import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'production/signInUp/singninup.dart';

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
        fontFamily: "GothicA1",
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      //SignInScreen() // OTPScreen() // SignInScreen() //ZomatoLoginStateful(title: "Zomato"),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => const SignUpScreen(),
        ),
        // GetPage(
        //   name: "/otp",
        //   page: () => OTPScreeen(),
        //   binding: OTPBinding(),
        // ),
      ],
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// class ZomatoLoginStateful extends StatefulWidget {
//   ZomatoLoginStateful({Key? key, this.title}) : super(key: key);

//   final String? title;

//   @override
//   _ZomatoLoginStatefulState createState() => _ZomatoLoginStatefulState();
// }

// class _ZomatoLoginStatefulState extends State<ZomatoLoginStateful> {
//   ScrollController? controller;
//   final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     // final provider = Provider.of<LoginProvider>(context);
//     Size size = MediaQuery
//         .of(context)
//         .size;

// //     showErrorUsingSnackBar(String message){
// // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message),));
// //     provider.isloading=false;
// //     provider.refreshScreen();
// //     }

//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       // resizeToAvoidBottomPadding: false,
//       key: _scaffoldKey,
//       body: Stack(
//            children: [

//              Container(
//                height: size.height,
//                width: size.width,
//                child: Image.asset(
//                  'assets/images/bg.png',
//                  fit: BoxFit.fill,
//                ),
//              ),
//              Container(color: Colors.black38,), Column(
//                children: [
//                  Expanded(
//                    child: GestureDetector(
//                      onTap:  () {

//                      },
//                      child: Container(
//                        margin: EdgeInsets.only(top: 30, right: 20),
//                        child: Align(
//                            alignment: Alignment.topRight,
//                            child: MaterialButton(
//                              onPressed: () {
// /*
//                                String phno=  provider.validatePhoneNumber(textController.text);
//                                provider.login('+91', textController.text);*/

//                              },
//                              color: Colors.black45,
//                              minWidth: 70,
//                              shape: RoundedRectangleBorder(
//                                  borderRadius: new BorderRadius.circular(30.0)),
//                              padding: EdgeInsets.zero,
//                              child: Text(
//                                'Skip',
//                                style: TextStyle(color: Colors.white70),
//                              ),
//                            )),
//                      ),
//                    ),
//                  ),
//                  Container(

//                    width: size.width,
//                    child: LayoutBuilder(builder:
//                        (BuildContext context, BoxConstraints constraints) {
//                      return Column(
//                          mainAxisAlignment: MainAxisAlignment.end,
//                          crossAxisAlignment: CrossAxisAlignment.center,
//                          children: [
//                            SizedBox(
//                              height: 50,
//                            ),
//                            MobileNumberWidget(constraints: constraints,textEditingControllerCallBack :(TextEditingController controller){
//                                provider.textController=controller;
//                            },dialcodeCallback: (String dialcode){
//                              provider.dialcode=dialcode;
//                            }),

//                            GestureDetector(
//                              onTap:(){
//                           String err=  provider.validatePhoneNumber(  provider.textController.text);
//                          if(err!=null){
//                            provider.errMsg=err;
//                            provider.isAnyError=true;
//                                showErrorUsingSnackBar(err);
//                          }else{
//                            provider.login(provider.dialcode,  provider.textController.text,errFunction:showErrorUsingSnackBar );
//                          }

//                              },
//                              child: Container(
//                                  width: constraints.maxWidth * 0.85,
//                                  height: 50,
//                                  margin: EdgeInsets.only(top: 20),
//                                  child: Align(

//                                      child: ((){
//                                        if(provider.isloading==true){
//                                          return Container(
//                                              height:16,
//                                              width:16,
//                                              child: CircularProgressIndicator(backgroundColor: Colors.white,
//                                                valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),
//                                              )
//                                          );
//                                        }else{
//                                       return   Text(
//                                              "Send OTP",
//                                              style:
//                                              TextStyle(
//                                              color: Colors.white, fontSize: 20));
//                                        }

//                                      }())

//                                  ),
//                                  decoration: BoxDecoration(
//                                      color: Colors.black,
//                                      borderRadius:
//                                      BorderRadius.all(Radius.circular(7)))),
//                            ),
//                            Container(
//                              padding: EdgeInsets.symmetric(
//                                  horizontal: 20, vertical: 20),
//                              width: constraints.maxWidth,
//                              child: Row(
//                                mainAxisAlignment: MainAxisAlignment
//                                    .spaceBetween,
//                                children: [
//                                  Container(
//                                    width: (constraints.maxWidth/2) -40 ,
//                                    height: 1,
//                                    color: Colors.white38,
//                                  ),
//                                  Text(
//                                    " OR ",
//                                    style: TextStyle(color: Colors.white70),
//                                  ),
//                                  Container(
//                                  width:  (constraints.maxWidth/2)-40 ,
//                                    height: 1,
//                                    color: Colors.white38,
//                                  ),
//                                ],
//                              ),
//                            ),
//                            // email button
//                            Container(
//                              decoration: BoxDecoration(color: Colors.white,
//                                borderRadius: BorderRadius.all(
//                                    Radius.circular(7)),

//                              ),
//                              width: constraints.maxWidth * 0.85,
//                              child: Padding(
//                                padding: const EdgeInsets.all(10.0),
//                                child: Row(
//                                  mainAxisAlignment: MainAxisAlignment.start,
//                                  children: [
//                                    Align(child: Icon(Icons.mail, size: 30,),
//                                      alignment: Alignment.topLeft,
//                                    ),
//                                    Expanded(child: Text("Continue with Email",
//                                      textAlign: TextAlign.center,
//                                      style: TextStyle(fontSize: 20,
//                                          fontWeight: FontWeight.w800),))
//                                  ],
//                                ),
//                              ),
//                            ),
// // other social media
//                            Container(
//                              margin: EdgeInsets.only(top: 20),
//                              width: constraints.maxWidth * 0.85,
//                              child:
//                              Row(children: [
//                                Container(
//                                  width:(constraints.maxWidth * 0.85)/2 -5,
//                                  decoration: BoxDecoration(
//                                    color: Colors.white,
//                                    borderRadius: BorderRadius.all(
//                                        Radius.circular(7)),
//                                  ),
//                                  child: Padding(
//                                    padding: const EdgeInsets.all(10.0),
//                                    child: Row(
//                                      mainAxisAlignment: MainAxisAlignment
//                                          .start,
//                                      children: [
//                                        Align(child: SvgPicture.asset(
//                                          'assets/images/facebook.svg',
//                                          height: 25,),
//                                          alignment: Alignment.topLeft,
//                                        ),
//                                        Expanded(child: Text("Facebook",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(fontSize: 17,
//                                              fontWeight: FontWeight.w800),))
//                                      ],
//                                    ),
//                                  ),
//                                ),
//                              SizedBox(width: 10,),
//                                Container(
//                                  width:(constraints.maxWidth * 0.85)/2 -5,
//                                  decoration: BoxDecoration(
//                                    color: Colors.white,
//                                    borderRadius: BorderRadius.all(
//                                        Radius.circular(7)),

//                                  ),
//                                  child: Padding(
//                                    padding: const EdgeInsets.all(10.0),
//                                    child: Row(
//                                      mainAxisAlignment: MainAxisAlignment
//                                          .start,
//                                      children: [
//                                        Align(child: SvgPicture.asset(
//                                          'assets/images/search.svg',
//                                          height: 25,),
//                                          alignment: Alignment.topLeft,
//                                        ),
//                                        Expanded(child: Text("Google",
//                                          textAlign: TextAlign.center,
//                                          style: TextStyle(fontSize: 17,
//                                              fontWeight: FontWeight.w800),))
//                                      ],
//                                    ),
//                                  ),
//                                )
//                              ],)
//                              ,),
//                            Container(
//                              margin: EdgeInsets.only(top: 20, bottom: 20),
//                              width: constraints.maxWidth * 0.85,
//                              child: Expanded(
//                                child: Text("By continuing you agree to our\n"
//                                    "Terms of services Privacy Policy Content Policy",
//                                  style: TextStyle(color: Colors.white),
//                                  textAlign: TextAlign.center,
//                                ),
//                              ),
//                            )

//                          ]);
//                    }),
//                  )
//                ],
//              ),

//      /*        Container(

//                child: Align(alignment: Alignment.bottomCenter,
//                  child: Container(height: 5`0,width:size.width,
//                    child: Container(
//                        color: Colors.black,
//                        child: Text("heelo")),
//                  ),
//                ),
//                height: size.height,
//                width: size.width,),*/

//            ],
//          )
//       // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
