part of authentication_view;

class _ResendButton extends GetView<OTPController> {
  const _ResendButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Text((controller.durationCountdown.value) > 0
              ? "Resend in (${controller.durationCountdown.value})"
              : "Resend"),
        )
      ],
    );
  }
}
