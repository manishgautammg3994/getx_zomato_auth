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
      )
    ],
  );
}
