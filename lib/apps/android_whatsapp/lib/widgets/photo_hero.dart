import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class PhotoHero extends StatelessWidget {
  final String? heroID;
  final String? photo;
  final Function onTap;
  final double width;

  PhotoHero({
    required this.heroID,
    required this.photo,
    required this.width,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: width,
        child: Hero(
          tag: heroID!,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onTap as void Function()?,
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: photo!,
                fit: BoxFit.contain,
                fadeInCurve: Curves.decelerate,
              )
            )
          ),
        ),
      ),
    );
  }
}