import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:travel_app/widgets/rounded_gradient_button.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black12, offset: Offset(0, 0), blurRadius: 8)
              ]
            ),
            height: 68,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt, color: Colors.black26, size: 32),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.local_bar, color: Colors.black26, size: 32),
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: -25,
            child: Align(
              alignment: Alignment.topCenter,
              child: RoundedGradientButton(
                size: 55,
                onTap: () {},
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF2AF598),
                    Color(0xFF009EFD)
                  ]
                ),
                icon: Transform.rotate(
                  angle: math.pi / 4,
                  child: Icon(Icons.navigation, size: 25, color: Colors.white),
                )
              ),
            ),
          )
        ]
      ),
    );
  }
}
