part of sign_in;

class _footer_policy_btn extends StatelessWidget {
  _footer_policy_btn(
      {required this.onPressedTS, Key? key, this.onPressedPP, this.onPressedCP})
      : super(key: key);

  final Function()? onPressedTS;
  final Function()? onPressedPP;
  final Function()? onPressedCP;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
              text: "By continuing,you are agree to our",
              style:
                  Theme.of(context).textTheme.caption?.copyWith(fontSize: 14),
              children: [
                TextSpan(text: "Terms of Service"),
              ]),
        ),
      ],
    );
  }
}
