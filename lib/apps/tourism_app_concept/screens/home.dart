import 'package:flutter/material.dart';

import '../utils/images.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/buttons_section.dart';
import '../widgets/header.dart';
import '../widgets/places_swiper.dart';
import '../widgets/related_places_swiper.dart';
import '../widgets/theme_app.dart';

class TravelAppHome extends StatefulWidget {
  @override
  _TravelAppHomeState createState() => _TravelAppHomeState();
}

class _TravelAppHomeState extends State<TravelAppHome> {
  _preloadImages() {
    travelAppImages.keys.forEach((key) {
      precacheImage(travelAppImages[key]!, context);
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _preloadImages();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeTravelApp(
      child: Scaffold(
        body: Stack(children: <Widget>[
          ListView(
            children: <Widget>[
              Header(),
              PlacesSwiper(),
              ButtonsSection(),
              RelatedPlacesSwiper(),
              SizedBox(height: 100)
            ],
          ),
          BottomBar()
        ]),
      ),
    );
  }
}
