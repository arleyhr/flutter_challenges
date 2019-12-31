import 'package:flutter/material.dart';
import 'dart:math' as math;


class RoundedSquareButton extends StatefulWidget {
  final Widget icon;
  final double size;
  final Gradient gradient;
  final Function onTap;
  const RoundedSquareButton({
      Key key,
      @required this.icon,
      this.size = 50,
      @required this.gradient,
      @required this.onTap,
      }) : super(key: key);

  @override
  _RoundedSquareButtonState createState() => _RoundedSquareButtonState();
}

class _RoundedSquareButtonState extends State<RoundedSquareButton> {
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
      child: Transform.rotate(
        angle: math.pi / 4,
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.size / 2.5),
            boxShadow: [
              BoxShadow(color: Colors.black26, offset: Offset(0, isPressed ? 0 : 5), blurRadius: isPressed ? 3 : 10)
            ],
            gradient: widget.gradient
          ),
          height: widget.size,
          width: widget.size,
          child: Transform.rotate(
            angle: - math.pi / 4,
            child: widget.icon
          )
        ),
      ),
    );
  }
}