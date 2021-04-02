import 'package:flutter/material.dart';
import 'package:multi_option_flare/menu_animation.dart';

class MultiOptionFlare extends StatelessWidget {
  const MultiOptionFlare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 102, 18, 222),
      alignment: Alignment.bottomCenter,
      child: MenuAnimation(),
    );
  }
}