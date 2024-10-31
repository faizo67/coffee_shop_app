import 'dart:math';

import 'package:coffee_shop_app/component/coffee_title.dart';
import 'package:coffee_shop_app/models/coffee.dart';
import 'package:coffee_shop_app/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shifter extends StatefulWidget {
  const Shifter({super.key});

  @override
  State<Shifter> createState() => _ShifterState();
}

class _ShifterState extends State<Shifter> {
  @override
  Widget build(BuildContext context) {
    void addItem(Coffee coffee) {
      Provider.of<CoffeeShop>(context, listen: false).addItem(coffee);
    }

    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'How would you Like your Coffee?',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(
              color: Color.fromARGB(255, 37, 53, 61),
              thickness: 1,
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: value.coffeeList.length,
              itemBuilder: (context, index) {
                // get list of coffee's
                Coffee eachCoffee = value.coffeeList[index];

                // Display the coffee's list
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 214, 199, 146),
                  ),
                  child: CoffeeTitle(
                    coffee: eachCoffee,
                    icon: const Icon(Icons.add),
                    onTap: () => addItem(eachCoffee),
                  ),
                );
              },
            )),
          ],
        ),
      )),
    );
  }
}
