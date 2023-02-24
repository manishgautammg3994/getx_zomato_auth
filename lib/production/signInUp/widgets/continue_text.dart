part of sign_in;

class _ContinueText extends StatelessWidget {
  final String midText;
  const _ContinueText({Key? key, required this.midText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            indent: Get.width / 80,
            endIndent: Get.width / 80, //Todo dynamic
            thickness: 1,
          ),
        ),
        Text(
          "$midText",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
        ),
        Expanded(
          child: Divider(
            indent: Get.width / 80, //TODO dynamic
            endIndent: Get.width / 80,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
