import 'package:flutter/material.dart';

class TravelAppDetailHeader extends SliverPersistentHeaderDelegate {
  String image;
  String placeId;
  TravelAppDetailHeader({ this.image, this.placeId });
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        Hero(
          tag: "place-$placeId",
          child: Image.network(image, fit: BoxFit.cover),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: -1,
          child: Container(
            height: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
              child: Container(
                color: Colors.white,
                child: null,
              ),
            ),
          ),
        )
      ]
    );
  }

  @override
  double get maxExtent => 400;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}