import 'package:flutter/material.dart';
import 'package:flutter_challenges/apps/app_for_collectors/theme.dart';

class BottomBar extends StatelessWidget {
  BottomBar({Key? key, this.color = const Color.fromRGBO(245, 246, 255, 1)})
      : super(key: key);

  final Color color;

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
  const BottomBarButton({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed as void Function()?,
      child: Icon(icon, size: 34.0, color: primaryColor),
    );
  }
}
