part of sign_in;

class _ContinueButton extends GetView {
  
  const _ContinueButton(
      {required this.isLoading, required this.onPressed, Key? key})
      : super(key: key);

  final bool isLoading;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return AsyncButton(
      loadingchild: const CircularProgressIndicator(),
      style: ElevatedButton.styleFrom(
          elevation: 1,
          minimumSize: Size(double.infinity, (Get.height / 15) + 5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: onPressed,
      child: const Text("Continue"),
      isLoading: isLoading,
    ).paddingSymmetric(horizontal: 20.0);
  }
}
