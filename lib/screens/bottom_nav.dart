import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNav extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
        onTabChange: (value) => onTabChange!(value),
        mainAxisAlignment: MainAxisAlignment.center,
        color: Colors.green,
        activeColor: Colors.amber,
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 20,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: const [
          GButton(
            icon: Icons.api_sharp,
          ),
          GButton(icon: Icons.add_moderator),
          GButton(icon: Icons.shop),
        ]);
  }
}
