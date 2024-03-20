import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hashtek_assessment/services/profile_page_navigation_service.dart';
import 'package:hashtek_assessment/widgets/custom_divider.dart';
import 'package:hashtek_assessment/widgets/custom_elevated_button.dart';
import 'package:hashtek_assessment/widgets/custom_outlined_button.dart';
import 'package:hashtek_assessment/widgets/profile_area.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(
          'My Profile',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(
              bottom: kBottomNavigationBarHeight + kFloatingActionButtonMargin),
          child: Column(
            children: [
              ProfileArea(
                profileName: 'Michael Watson',
                contactNum: '(203) 2563-8542',
                deviceSize: size,
                foregroundImage: const AssetImage('assets/profile_pic.jpg'),
              ),
              Gap(size.height * 0.018),
              CustomDivider(size: size),
              Gap(size.height * 0.018),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => Column(
                  children: [
                    CustomElevatedButton(
                      key: Key(
                          '${ProfileNavigationService.profileOptions[index].optionTitle.toLowerCase()}Button'),
                      onPressed: () async {
                        await ProfileNavigationService.profileOptionsOnPressed(
                            ProfileNavigationService.profileOptions[index], context);

                        setState(() {});
                      },
                      icon: ProfileNavigationService.profileOptions[index].iconData,
                      text: ProfileNavigationService.profileOptions[index].optionTitle,
                    ),
                    Gap(size.height * 0.02),
                  ],
                ),
                itemCount: ProfileNavigationService.profileOptions.length,
              ),
              CustomOutlinedButton(
                key: const Key('logOut'),
                deviceSize: size,
                onPressed: () {
                  debugPrint('Logged out');
                },
                text: 'Log out',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
