part of sign_in;

Widget _buildIllustration() {
  return Stack(
    children: [
      Container(
        height: Get.height / 2.3,
        width: double.infinity,
        child: Image.network(
          "https://www.shutterstock.com/image-photo/las-vegas-nv-september-22-600w-487851388.jpg",
          fit: BoxFit.fill,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Align(
          alignment: Alignment.topRight,
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
      )
    ],
  );
}
