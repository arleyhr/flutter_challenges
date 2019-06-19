import 'package:flutter/material.dart';
import 'package:flutter_challenges/apps/app_for_collectors/main.dart';

class BottomBar extends StatelessWidget {
  BottomBar({
    Key key,
    this.color
  }) : super(key: key);

  Color color = Color.fromRGBO(245, 246, 255, 1);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: color,
      elevation: 0,
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BottomBarButton(icon: Icons.star_border, onPressed: () {}),
            BottomBarButton(icon: Icons.apps, onPressed: () {}),
            BottomBarButton(icon: Icons.person_outline, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

class BottomBarButton extends StatelessWidget {
  const BottomBarButton({
    Key key,
    @required this.icon,
    @required this.onPressed
  }) : super(key: key);

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      color: Colors.transparent,
      elevation: 0,
      disabledElevation: 0,
      highlightElevation: 0,
      child: Icon(icon, size: 34.0, color: primaryColor),
    );
  }
}