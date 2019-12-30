import 'package:flutter/material.dart';
import 'dart:math' as math;


class RoundedGradientButton extends StatefulWidget {
  final Widget icon;
  final double size;
  final Gradient gradient;
  final Function onTap;
  const RoundedGradientButton({
      Key key,
      @required this.icon,
      this.size = 50,
      @required this.gradient,
      @required this.onTap,
      }) : super(key: key);

  @override
  _RoundedGradientButtonState createState() => _RoundedGradientButtonState();
}

class _RoundedGradientButtonState extends State<RoundedGradientButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.size / 2),
          boxShadow: [
            BoxShadow(color: Colors.black26, offset: Offset(0, isPressed ? 0 : 2), blurRadius: isPressed ? 2 : 4)
          ],
          gradient: widget.gradient
        ),
        height: widget.size,
        width: widget.size,
        child: widget.icon
      )
    );
  }
}