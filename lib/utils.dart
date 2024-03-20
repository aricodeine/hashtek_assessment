import 'package:flutter/material.dart';
import 'package:hashtek_assessment/pages/bookmark_page.dart';
import 'package:hashtek_assessment/pages/calendar_page.dart';
import 'package:hashtek_assessment/pages/home_page.dart';
import 'package:hashtek_assessment/pages/profile_page.dart';

List<(bool, Widget)> screensList = <(bool, Widget)>[
  (
    true,
    const HomePage(),
  ),
  (
    false,
    const CalendarPage(),
  ),
  (
    false,
    const BookmarkPage(),
  ),
  (
    false,
    const ProfilePage(),
  ),
];
