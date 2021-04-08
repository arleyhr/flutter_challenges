import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class PlaceholderCard extends StatelessWidget {
  const PlaceholderCard({
    Key? key,
    required this.isPair,
    required this.onPressed,
  }) : super(key: key);

  final bool isPair;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: isPair ? 20.0 : 10.0,
        right: isPair ? 10.0 : 20.0,
        top: 5.0,
        bottom: 5.0,
      ),
      child: TextButton(
        style: ButtonStyle(),
        onPressed: onPressed as void Function()?,
        child: DottedBorder(
            dashPattern: [8, 5],
            borderType: BorderType.RRect,
            radius: Radius.circular(10),
            color: Colors.grey,
            child: Container(
              alignment: Alignment.center,
              child: Icon(
                Icons.add,
                color: Colors.grey,
                size: 30.0,
              ),
            )),
      ),
    );
  }
}
