import 'package:flutter/material.dart';

class RatingStars extends StatelessWidget {
  RatingStars({
    Key key,
    @required this.value,
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
          color: Color.fromRGBO(200, 202, 221, 1),
          size: 22,
        );
      }),
    );
  }
}