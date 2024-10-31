import 'dart:convert';
import 'dart:io';
import 'dart:js_interop_unsafe';

import 'package:coffee_shop_app/const.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  late String stringResponse;
  late Map mapResponse;
  late Map dataResponse;
  Future apiCall() async {
    http.Response response;
    response = await http.get(Uri.parse("https://reqres.in/api/users/2"));
    if (response.statusCode == 200) {
      setState(() {
        // stringResponse = response.body;
        mapResponse = json.decode(response.body);
        dataResponse = mapResponse['data'];
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    apiCall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          // ignore: unnecessary_null_comparison
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: dataResponse == null
                  ? const Text('Data Loading')
                  : Text("Your Email is :${dataResponse['email'].toString()}"),
            ),
            Container(
              child: dataResponse == null
                  ? const Text('Data Loading')
                  : Text('Your Name is :${dataResponse['first_name']}'),
            ),
            Container(
              height: 30,
              width: 270,
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(
                "Welcome to CoffeeHub",
                style: TextStyle(color: Colors.blueGrey.shade300),
              )),
            )
          ]), 
    );
  }
}
