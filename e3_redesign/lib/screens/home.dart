import 'package:e3_redesign/theme_app.dart';
import 'package:e3_redesign/utils/images.dart';
import 'package:e3_redesign/widgets/game_card.dart';
import 'package:e3_redesign/widgets/home_header.dart';
import 'package:flutter/material.dart';

class E3RedesignHome extends StatelessWidget {
  const E3RedesignHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeE3Redesign(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(400),
          child: HomeHeader(),
        ),
        backgroundColor: Color(0xFFf8f8f8),
        body: ListView(
          padding: EdgeInsets.only(left: 30, right: 20),
          children: <Widget>[
            SizedBox(height: 25),
            GameCard(
              image: Image.network(e3RedesignImages["gears"]),
              name: "GEARS 5",
              description: "Day of premier on september 10 2019",
              platforms: "PS4 / XBOX / PC",
              likes: 69,
              exclusiveLogo: Image.network(e3RedesignImages["xbox"]),
              titleWidth: 0,
            ),
            SizedBox(height: 20),
            GameCard(
              image: Image.network(e3RedesignImages["cyberpunk"]),
              name: "CYBERPUNK 2277",
              description: "Date of premiere on april 16 2020",
              platforms: "PS4 / XBOX / PC",
              likes: 69,
              titleWidth: 84,
            ),
          ],
        )
      ),
    );
  }
}
