import 'package:coffee_shop_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeTitle extends StatelessWidget {
  final Coffee coffee;
  final Widget icon;
  void Function()? onTap;
  CoffeeTitle({
    super.key,
    required this.coffee,
    required this.icon,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      
      title: Text(coffee.name),
      subtitle: Text(coffee.price),
      leading: Text(coffee.imagePath),
      trailing: icon,
      onTap: onTap,
    );
  }
}
