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
          padding: EdgeInsets.only(left: 25, right: 10),
          children: <Widget>[
            SizedBox(height: 30),
            GameCard(
              image: Image.network(e3RedesignImages["gears"], fit: BoxFit.cover),
              name: "GEARS 5",
              description: "Day of premier on september 10 2019",
              platforms: "PS4 / XBOX / PC",
              likes: 69,
            )
          ],
        )
      ),
    );
  }
}
