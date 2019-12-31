import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  final Color activeColor;
  final Color color;
  final double size;

  RatingStars({
    this.activeColor,
    this.color,
    this.size = 22,
    @required this.value,
    Key key,
  }) : super(key: key);

  final value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (int index) {
        return Icon(
          index < value ? Icons.star : Icons.star_border,
          color: activeColor,
          size: size,
        );
      }),
    );
  }
}