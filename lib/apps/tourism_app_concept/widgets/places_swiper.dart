import 'package:flutter/material.dart';
import 'package:flutter_challenges/application.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../routes.dart';
import '../utils/colors.dart';
import '../utils/images.dart';

class PlacesSwiper extends StatelessWidget {
  const PlacesSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 31),
      height: 410.0,
      child: Swiper(
        itemCount: travelAppPlaces.length,
        viewportFraction: 0.85,
        scale: 0.9,
        pagination: SwiperPagination(
            margin: EdgeInsets.only(top: 80),
            builder: DotSwiperPaginationBuilder(
                color: Color(0xFFA7A7A7),
                activeColor: Color(0xFF66A6FF),
                activeSize: 14)),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Application.router!.navigateTo(
                  context, TravelAppRoutes.getDetailPath(placeId: index));
            },
            child: Stack(
              children: <Widget>[
                Hero(
                  tag: "place-$index",
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 343,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(travelAppPlaces[index]!),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Positioned.fill(
                  bottom: 40,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: FractionallySizedBox(
                      widthFactor: 0.88,
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 15, left: 16, right: 16, bottom: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  offset: Offset(0, 10),
                                  blurRadius: 10)
                            ]),
                        height: 95,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Bora Bora Beach",
                                style:
                                    TextStyle(color: travelAppColors["gray"])),
                            SizedBox(height: 4),
                            FractionallySizedBox(
                              widthFactor: 0.9,
                              child: Text(
                                  "Lorem ipsum dolor sit ame t, consectetur sed do eiusmod tempor incididunt ut...",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 10,
                                      height: 1.5,
                                      color: travelAppColors["lightgray"],
                                      fontFamily: "Roboto")),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
