import 'package:flutter/material.dart';
import 'package:travel_app/utils/images.dart';

class RelatedPlacesSwiper extends StatelessWidget {
  const RelatedPlacesSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 31),
      height: 183,
      child: ListView.builder(
        itemCount: travelAppRelatedPlaces.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return Container(
            margin: EdgeInsets.only(left: index == 0 ? 20 : 10, right: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                height: 183,
                width: 126,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(travelAppRelatedPlaces[index]!),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
          );
        },
      )
    );
  }
}