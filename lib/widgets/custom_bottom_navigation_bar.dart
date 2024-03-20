import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.size,
    required int selectedIndex,
    required this.onTap,
    required this.items,
  }) : _selectedIndex = selectedIndex;

  final Size size;
  final int _selectedIndex;
  final void Function(int)? onTap;
  final List<BottomNavigationBarItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          bottom: size.height * 0.025,
          left: size.width * 0.05,
          right: size.width * 0.05,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(size.width * 0.07),
          child: BottomNavigationBar(
            onTap: onTap,
            currentIndex: _selectedIndex,
            items: items,
          ),
        ));
  }
}
