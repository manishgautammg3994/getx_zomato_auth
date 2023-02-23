part of sign_in;

Widget _buildTitle() {
  return Center(
      child: RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
      text: "India's #1 Food Delivery \n and Dining App",
      style: TextStyle(
          overflow: TextOverflow.visible,
          fontSize: 30, //set this dynamically,
          // fontFamily: ,

          fontWeight: FontWeight.bold),
    ),
  ));
}
