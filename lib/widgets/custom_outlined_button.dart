import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.onPressed,
    required this.deviceSize,
    required this.text,
  });
  final VoidCallback onPressed;
  final Size deviceSize;
  final String text;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: onPressed,
        style:
            OutlinedButton.styleFrom(fixedSize: Size(deviceSize.width, deviceSize.height * 0.065)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.exit_to_app,
            ),
            Gap(deviceSize.width * 0.02),
            Text(
              text,
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ));
  }
}
