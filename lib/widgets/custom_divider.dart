import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.002,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.grey.withOpacity(0.1), Colors.grey, Colors.grey.withOpacity(0.1)],
          stops: const [0.0, 0.5, 1.0],
        ),
      ),
    );
  }
}
