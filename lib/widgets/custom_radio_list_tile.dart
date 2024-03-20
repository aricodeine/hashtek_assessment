import 'package:flutter/material.dart';
import 'package:hashtek_assessment/models/country.dart';

class CustomRadioListTile extends StatelessWidget {
  const CustomRadioListTile({
    super.key,
    required this.index,
    required this.country,
    required this.currentValue,
    this.onChanged,
    this.title,
  });

  final int index;
  final Widget? title;
  final int? currentValue;
  final Country country;
  final void Function(int?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
        value: index,
        groupValue: currentValue,
        controlAffinity: ListTileControlAffinity.trailing,
        title: title,
        onChanged: onChanged);
  }
}
