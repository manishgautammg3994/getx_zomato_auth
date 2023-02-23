part of sign_in;

class _ContinueText extends StatelessWidget {
  final String midText;
  _ContinueText({Key? key, required this.midText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            endIndent: 16, //Todo dynamic
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
            indent: 16, //TODO dynamic
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
