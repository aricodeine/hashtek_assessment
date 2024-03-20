import 'package:country_icons/country_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hashtek_assessment/services/country_selection_service.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.text,
  });

  final VoidCallback onPressed;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(fixedSize: Size(size.width, size.height * 0.065)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon),
              Gap(size.width * 0.02),
              Text(text),
            ],
          ),
          Row(
            children: [
              if (CountrySelectionService.selectedCountry != null && icon == Icons.flag_outlined)
                SizedBox(
                    height: size.height * 0.02,
                    width: size.width * 0.1,
                    child: CountryIcons.getSvgFlag(
                        CountrySelectionService.selectedCountry!.countryCode)),
              Icon(
                Icons.arrow_forward_ios_outlined,
                size: size.width * 0.03,
              ),
            ],
          )
        ],
      ),
    );
  }
}
