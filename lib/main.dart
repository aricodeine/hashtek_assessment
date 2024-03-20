import 'package:flutter/material.dart';
import 'package:hashtek_assessment/constants.dart';
import 'package:hashtek_assessment/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
        appBarTheme: kAppBarTheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: kPrimaryColor)),
        outlinedButtonTheme:
            OutlinedButtonThemeData(style: OutlinedButton.styleFrom(foregroundColor: Colors.white)),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: kPrimaryColor,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.white,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            type: BottomNavigationBarType.fixed,
            selectedIconTheme: IconThemeData(size: size.width * 0.07),
            unselectedIconTheme: IconThemeData(size: size.width * 0.07)),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          shape: CircleBorder(
            side: BorderSide(
                color: Colors.black, width: 4, strokeAlign: BorderSide.strokeAlignOutside),
          ),
          elevation: 10,
          backgroundColor: Colors.white,
          foregroundColor: kPrimaryColor,
        ),
      ),
      home: const Home(),
    );
  }
}
