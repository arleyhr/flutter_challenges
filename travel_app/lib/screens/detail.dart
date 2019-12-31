import 'package:flutter/material.dart';
import 'package:shared_app/application.dart';
import 'package:travel_app/routes.dart';
import 'package:travel_app/utils/colors.dart';

import 'package:travel_app/utils/images.dart';
import 'package:travel_app/widgets/detail_header.dart';
import 'package:travel_app/widgets/related_places_swiper.dart';
import 'package:travel_app/widgets/rounded_gradient_button.dart';
import 'package:travel_app/widgets/stars_rating.dart';
import 'package:travel_app/widgets/theme_app.dart';

class TravelAppDetail extends StatelessWidget {
  final String placeId;
  const TravelAppDetail({ @required this.placeId, Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeTravelApp(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              pinned: true,
              delegate: TravelAppDetailHeader(image: travelAppPlaces[int.parse(placeId)], placeId: placeId),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(10))
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 2),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Bora Bora Beach", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600, letterSpacing: 1.5, color: travelAppColors["gray"])),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      RatingStars(value: 3, activeColor: Color(0xFF009EFD), size: 17),
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(text: "   3.8   ", style: TextStyle(color: travelAppColors["gray"], fontSize: 13 )),
                                            TextSpan(text: "( 450 ", style: TextStyle(color: travelAppColors["lightgray"], fontSize: 11)),
                                            TextSpan(text: "Reviews ", style: TextStyle(color: travelAppColors["lightgray"], fontStyle: FontStyle.italic)),
                                            TextSpan(text: ")", style: TextStyle(color: travelAppColors["lightgray"]))
                                          ]
                                        ),
                                      ),
                                  ])
                                ],
                              ),
                              RoundedGradientButton(
                                onTap: () {
                                  Application.router.pop(context);
                                },
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFF2AF598),
                                    Color(0xFF009EFD)
                                  ]
                                ),
                                icon: Icon(Icons.directions, size: 25, color: Colors.white)
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 40),
                          child: RichText(
                            maxLines: 20,
                            softWrap: true,
                            textAlign: TextAlign.justify,
                            text: TextSpan(
                              style: TextStyle(fontFamily: "Roboto"),
                              children: [
                                TextSpan(
                                  text: 'Lorem ipsum dolor sit ame t, consectetur sed do eiusmod tempor incididuntgfgnt.Lorem ipsum is placeholder text commonly used inu the graphic, print, and publishing industries foruu previewing layouts and visual mockups...   ',
                                  style: TextStyle(
                                    color: travelAppColors["gray"],
                                    fontSize: 13,
                                    letterSpacing: 1.2,
                                    height: 1.5
                                  )
                                ),
                                TextSpan(
                                  text: "Read more",
                                  style: TextStyle(color: Color(0xFF14C8CC))
                                )
                              ]
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Text("Near by you",
                                    style: TextStyle(
                                      color: travelAppColors["gray"],
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                    )
                                  ),
                                  Container(
                                    height: 3,
                                    width: 96,
                                    margin: EdgeInsetsDirectional.only(top: 3),
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF2AF598),
                                          Color(0xFF009EFD)
                                        ]
                                      )
                                    ),
                                  )
                                ],
                              ),
                              Text("Similar",
                                style: TextStyle(
                                  color: travelAppColors["gray"],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600
                                )
                              ),
                              Text("Popular",
                                style: TextStyle(
                                  color: travelAppColors["gray"],
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600
                                )
                              ),
                            ],
                          ),
                        ),
                        RelatedPlacesSwiper(),
                      ],
                    ),
                  )
              ]),
            )
          ],
        )
      ),
    );
  }
}