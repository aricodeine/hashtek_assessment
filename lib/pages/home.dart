import 'package:flutter/material.dart';
import 'package:hashtek_assessment/utils.dart';
import 'package:hashtek_assessment/widgets/custom_bottom_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      for (int i = 0; i < screensList.length; i++) {
        screensList[i] = (false, screensList[i].$2);
      }
      screensList[_selectedIndex] = (true, screensList[_selectedIndex].$2);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: _selectedIndex,
            children: screensList.map((e) => e.$2).toList(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.qr_code_scanner_outlined,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomBottomNavigationBar(
          size: size,
          selectedIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.home_rounded),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.calendar_month_rounded),
              icon: Icon(Icons.calendar_month_outlined),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.bookmark_rounded),
              icon: Icon(Icons.bookmark_outline),
              label: 'Bookmark',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.person_rounded),
              icon: Icon(Icons.person_outline),
              label: 'Person',
            ),
          ],
        ));
  }
}
