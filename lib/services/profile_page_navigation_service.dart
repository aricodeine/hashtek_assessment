import 'package:flutter/material.dart';
import 'package:hashtek_assessment/models/profile_option.dart';
import 'package:hashtek_assessment/pages/country_selection_page.dart';

class ProfileNavigationService {
  static List<ProfileOption> profileOptions = [
    ProfileOption(optionTitle: 'Profile', iconData: Icons.person_outline),
    ProfileOption(optionTitle: 'Favorite', iconData: Icons.star_border_outlined),
    ProfileOption(optionTitle: 'Country', iconData: Icons.flag_outlined),
    ProfileOption(optionTitle: 'Notification', iconData: Icons.notifications_none_outlined),
    ProfileOption(optionTitle: 'Settings', iconData: Icons.settings_outlined),
    ProfileOption(optionTitle: 'Help', iconData: Icons.help_outline_outlined),
  ];

  static Future<void> profileOptionsOnPressed(ProfileOption option, BuildContext context) async {
    switch (option.iconData) {
      case Icons.person_outline:
        break;
      case Icons.star_border_outlined:
        break;
      case Icons.flag_outlined:
        await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CountrySelectionPage(),
            ));
        break;
      case Icons.notifications_none_outlined:
        break;
      case Icons.settings_outlined:
        break;
      case Icons.help_outline_outlined:
        break;
      default:
        break;
    }
  }
}
