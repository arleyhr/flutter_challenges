import 'package:flutter/material.dart';
import 'package:travel_app/utils/images.dart';
import 'package:travel_app/widgets/header.dart';
import 'package:travel_app/widgets/places_swiper.dart';
import 'package:travel_app/widgets/theme_app.dart';


class TravelAppHome extends StatefulWidget {
  @override
  _TravelAppHomeState createState() => _TravelAppHomeState();
}

class _TravelAppHomeState extends State<TravelAppHome> {

  _preloadImages () {
    travelAppImages.keys.forEach((key) {
      precacheImage(travelAppImages[key], context);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // _preloadImages();
  }
  @override
  Widget build(BuildContext context) {
    return ThemeTravelApp(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Header(),
            PlacesSwiper()
          ],
        ),
      ),
    );
  }
}