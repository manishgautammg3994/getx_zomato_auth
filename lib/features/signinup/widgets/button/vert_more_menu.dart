part of sign_in;

class _VertMoreButton extends StatelessWidget {
  const _VertMoreButton({required this.onPressed, Key? key}) : super(key: key);

  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: Colors.grey[200],
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[800],
        ),
        tooltip: "Auth Providers",
      ),
    );
  }
}
