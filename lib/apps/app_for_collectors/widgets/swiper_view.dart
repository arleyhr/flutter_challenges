import 'package:flutter/material.dart';
import 'package:flutter_challenges/apps/app_for_collectors/models/game.dart';
import 'package:flutter_challenges/apps/app_for_collectors/theme.dart';
import 'package:flutter_challenges/apps/app_for_collectors/widgets/games_swiper.dart';
import 'package:flutter_challenges/apps/app_for_collectors/widgets/stars_rating.dart';

class SwiperView extends StatelessWidget {
  SwiperView({
    Key key,
    this.currentGame,
    this.size,
    this.games,
    this.onGameChange,
    this.onSliderChange,
    this.onGameTap,
  }) : super(key: key);

  final Game currentGame;
  final Size size;
  final List<Game> games;
  final Function onGameChange;
  final Function onSliderChange;
  final Function onGameTap;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Stack(
          children: <Widget>[
            RightStats(selectedGame: currentGame),
            GamesSwiper(size: size, games: games, onItemChange: onGameChange, onGameTap: onGameTap),
          ],
        ),
        Text(currentGame.name, style: TextStyle(
          color: primaryColor,
          fontSize: 20.0
        ), textAlign: TextAlign.center),
        SizedBox(
          height: 5,
        ),
        RatingStars(value: currentGame.rating),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Slider(
            value: currentGame.percent.toDouble(),
            min: 0,
            max: 100,
            inactiveColor: Color.fromRGBO(200, 202, 221, 1),
            onChanged: onSliderChange,
          ),
        )
      ])
    );
  }
}


class RightStats extends StatelessWidget {
  RightStats({
    Key key,
    this.selectedGame
  }) : super(key: key);

  final Game selectedGame;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 80.0,
      right: 25.0,
      child: Column(
        children: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.bubble_chart, size: 35, color: primaryColor
            ),
          ),
          Text('${selectedGame.percent}%', style: TextStyle(
            fontSize: 18,
            height: 0.5,
            color: Colors.grey,
            fontWeight: FontWeight.w300
          )),
          SizedBox(
            height: 35,
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.people, size: 35, color: primaryColor
            ),
          ),
          Text(selectedGame.people.toString(), style: TextStyle(
            height: 0.5,
            fontSize: 18,
            color: Colors.grey,
            fontWeight: FontWeight.w300
          )),
          SizedBox(
            height: 35,
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.favorite_border, size: 35, color: primaryColor
            ),
          )
        ],
      ),
    );
  }
}
