part of sign_in;

class _GoogleButton extends StatelessWidget {
  const _GoogleButton({required this.onPressed, Key? key}) : super(key: key);

  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: Colors.grey[200],
      child: IconButton(
        onPressed: onPressed,
        icon: Image.asset("assets/images/raster/google.png"),
        tooltip: "Google",
      ),
    );
  }
}
