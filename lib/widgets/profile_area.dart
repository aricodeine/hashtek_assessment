import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileArea extends StatelessWidget {
  const ProfileArea({
    super.key,
    required this.deviceSize,
    required this.foregroundImage,
    required this.profileName,
    required this.contactNum,
  });

  final Size deviceSize;
  final AssetImage foregroundImage;
  final String profileName;
  final String contactNum;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          minRadius: deviceSize.width * 0.12,
          foregroundImage: foregroundImage,
        ),
        Gap(deviceSize.height * 0.01),
        Text(
          profileName,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        Text(
          contactNum,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
