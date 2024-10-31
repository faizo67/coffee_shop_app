import 'package:coffee_shop_app/const.dart';
import 'package:coffee_shop_app/screens/bottom_nav.dart';
import 'package:coffee_shop_app/screens/cart_page.dart';
import 'package:coffee_shop_app/screens/shifter.dart';
import 'package:coffee_shop_app/screens/shop_page.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _selectedIndex = 0;

  void navigation(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _page = const [
    ShopPage(),
    CartPage(),
    Shifter(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: _page[_selectedIndex],
      bottomNavigationBar: BottomNav(
        onTabChange: (p0) => navigation(p0),
      ),
    );
  }
}
