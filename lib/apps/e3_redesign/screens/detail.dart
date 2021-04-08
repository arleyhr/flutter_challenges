import 'package:flutter/material.dart';

import '../utils/images.dart';
import '../utils/games.dart';
import '../widgets/detail_header.dart';

class E3RedesignDetail extends StatelessWidget {
  final String? gameId;
  E3RedesignDetail({this.gameId, key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final game = games.firstWhere((g) {
      return g.gameId == gameId;
    });

    return Scaffold(
        backgroundColor: Color(0xFFF8F8F8),
        body: ListView(
          padding: EdgeInsets.only(top: 0),
          children: <Widget>[
            DetailHeader(
                cover: NetworkImage(game.cover!),
                platform: game.platform,
                name: game.name,
                release: game.release),
            SizedBox(height: 40),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: Column(children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Collector's Edition",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -0.8)),
                        Dots(),
                      ]),
                  SizedBox(height: 15),
                  ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      child: Container(
                          child: Image.network(
                              e3RedesignImages['cyberpunk_collectors']!))),
                ])),
            SizedBox(height: 40),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: Column(children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Dots(),
                        Text("Surprise Keanu Reeves E3 2019",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                letterSpacing: -0.8)),
                      ]),
                  SizedBox(height: 15),
                  ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      child: Container(
                          child: Image.network(e3RedesignImages['keanu']!))),
                ])),
          ],
        ));
  }
}

class Dots extends StatelessWidget {
  const Dots({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            color: Colors.black87, borderRadius: BorderRadius.circular(5)),
        height: 5,
        width: 5,
      ),
      SizedBox(width: 4),
      Container(
        decoration: BoxDecoration(
            color: Colors.black87, borderRadius: BorderRadius.circular(5)),
        height: 5,
        width: 5,
      ),
    ]);
  }
}
