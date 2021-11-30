import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bringvegetables(rupees: 50, thaila: true);
    int month = 12;
    String day = "Thurusday";
    double pi = 3.14;
    bool isMale = true;
    var day1 = "4";
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("I am Your Mentor"),
      ),
      body: Container(
          child: Text(
              "Welcome to $month months of flutter where it passes many $day")),
    ));
  }

  bringvegetables({int rupees = 100, bool thaila = false}) {}
}
