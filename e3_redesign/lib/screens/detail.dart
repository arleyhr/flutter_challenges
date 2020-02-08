import 'package:flutter/material.dart';
import 'package:e3_redesign/theme_app.dart';
import 'package:e3_redesign/utils/games.dart';
import 'package:e3_redesign/widgets/detail_header.dart';

class E3RedesignDetail extends StatelessWidget {
  final String gameId;
  E3RedesignDetail({ this.gameId,  key}) : super(key: key);

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
          DetailHeader(cover: NetworkImage(game.cover), platform: game.platform, name: game.name, release: game.release)
        ],
      )
    );
  }
}