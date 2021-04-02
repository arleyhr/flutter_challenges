import 'package:flutter/material.dart';

class WhatsAppFab extends StatelessWidget {
  final double width;
  final double height;
  final Color? backgroundColor;
  final Icon? icon;
  final double elevation;
  final Function? onPressed;

  WhatsAppFab({
    Key? key,
    this.width = 55.0,
    this.height = 55.0,
    this.backgroundColor,
    this.icon,
    this.elevation = 5.0,
    this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: RawMaterialButton(
        shape: CircleBorder(),
        fillColor: backgroundColor != null ? backgroundColor : Theme.of(context).accentColor,
        elevation: elevation,
        child: icon,
        onPressed: onPressed as void Function()?,
      )
    );
  }
}