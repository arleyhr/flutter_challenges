import '../models/coffee.dart';
import 'package:flutter/material.dart';

class FikeCoffeeHome extends StatefulWidget {
  @override
  _FikeCoffeeHomeState createState() => _FikeCoffeeHomeState();
}

class _FikeCoffeeHomeState extends State<FikeCoffeeHome> {
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.orange,
        height: size.height,
      ),
    );
  }
}
