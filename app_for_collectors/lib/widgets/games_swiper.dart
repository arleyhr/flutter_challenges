import 'package:flutter/material.dart';
import 'package:app_for_collectors/theme.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:app_for_collectors/models/game.dart';

class GamesSwiper extends StatelessWidget {
  GamesSwiper({
    Key key,
    @required this.size,
    @required List<Game> games,
    @required this.onItemChange,
    @required this.onGameTap,
  }) : _games = games, super(key: key);

  final Size size;
  final List<Game> _games;
  final Function onItemChange;
  final Function onGameTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.5,
      padding: EdgeInsets.only(bottom: 20.0),
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.55,
        itemHeight: size.height * 0.37,
        itemCount: _games.length,
        onIndexChanged: (int index) => onItemChange(_games[index]),
        itemBuilder: (BuildContext context, index) {
          final Game item = _games[index];
          return InkWell(
            onTap: () {
              onGameTap(_games[index].id);
            },
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: primaryColor.withAlpha(100),
                    offset: Offset(0, 15),
                    blurRadius: 20.0
                  )
                ]
              ),
              child: ImageCard(item: item),
            ),
          );
        },
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Game item;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'game-${item.name}',
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            FadeInImage(
              fit: BoxFit.fill,
              placeholder: AssetImage('lib/assets/placeholder.png', package: 'app_for_collectors'),
              image: NetworkImage(item.image, scale: 1.0),
            ),
            Positioned(
              width: 60.0,
              height: 60.0,
              left: 0,
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(10.0)),
                child: RaisedButton(
                  onPressed: (){},
                  child: Icon(Icons.mode_edit, color: Colors.black54, size: 25,),
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}