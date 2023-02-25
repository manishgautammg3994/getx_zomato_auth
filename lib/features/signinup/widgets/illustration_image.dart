part of sign_in;

Widget _buildIllustration({required double height, required double width}) {
  ///todo add @required
  return Stack(
    children: [
      Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: Image.asset(
              'assets/images/illu.png',
            ).image,
          ),
        ),
      ),
      Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: MaterialButton(
            onPressed: () {
              /*
                                     String phno=  provider.validatePhoneNumber(textController.text);
                                     provider.login('+91', textController.text);*/
            },
            color: Colors.black45,
            minWidth: 70,
            shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
            padding: EdgeInsets.zero,
            child: Text(
              'Skip',
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: MaterialButton(
              onPressed: () {
                /*
                                     String phno=  provider.validatePhoneNumber(textController.text);
                                     provider.login('+91', textController.text);*/
              },
              color: Colors.black45,
              minWidth: 70,
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
              padding: EdgeInsets.zero,
              child: Icon(Icons.translate)),
        ),
      ),
    ],
  );
}
