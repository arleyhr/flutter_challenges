import 'package:e3_redesign/routes.dart';
import 'package:e3_redesign/theme_app.dart';
import 'package:e3_redesign/utils/games.dart';
import 'package:e3_redesign/utils/images.dart';
import 'package:e3_redesign/widgets/game_card.dart';
import 'package:e3_redesign/widgets/home_header.dart';
import 'package:flutter/material.dart';
import 'package:shared_app/application.dart';

class E3RedesignHome extends StatelessWidget {
  const E3RedesignHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(400),
          child: HomeHeader(),
        ),
        backgroundColor: Color(0xFFf8f8f8),
        body: ListView(
          padding: EdgeInsets.only(left: 30, right: 10),
          children: <Widget>[
            SizedBox(height: 30),
            GameCard(
              image: Image.network(e3RedesignImages["gears"]),
              name: "GEARS 5",
              description: "Day of premier on september 10 2019",
              platforms: "PS4 / XBOX / PC",
              likes: 69,
              exclusiveLogo: Image.network(e3RedesignImages["xbox"]),
              titleWidth: 0,
              onPress: () {
                Application.router.navigateTo(context, E3RedesignRoutes.getDetailPath(gameId: 'gears'));
              }
            ),
            SizedBox(height: 30),
            GameCard(
              image: Image.network(e3RedesignImages["cyberpunk"]),
              name: "CYBERPUNK 2277",
              description: "Date of premiere on april 16 2020",
              platforms: "PS4 / XBOX / PC",
              likes: 69,
              titleWidth: 84,
              onPress: () {
                Application.router.navigateTo(context, E3RedesignRoutes.getDetailPath(gameId: 'cyberpunk'));
              },
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 50,
                  child: RawMaterialButton(
                    fillColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {
                      Application.router.pop(context);
                    },
                    child: Icon(Icons.dashboard, color: Colors.redAccent),
                  )
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    child: RawMaterialButton(
                      fillColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {
                        Application.router.pop(context);
                      },
                      child: Text("Live stream", style: TextStyle(fontWeight: FontWeight.bold),)
                    )
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: RawMaterialButton(
                    fillColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {
                      Application.router.pop(context);
                    },
                    child: Image.network(e3RedesignImages["favorite_comment"], width: 18),
                  )
                ),
              ]
            ),
            SizedBox(height: 30)
          ],
        )
      );
  }
}
