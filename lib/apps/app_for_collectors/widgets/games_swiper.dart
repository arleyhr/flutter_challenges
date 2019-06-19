import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:flutter_challenges/apps/app_for_collectors/models/game.dart';

class GamesSwiper extends StatelessWidget {
  const GamesSwiper({
    Key key,
    @required this.size,
    @required List<Game> games,
  }) : _games = games, super(key: key);

  final Size size;
  final List<Game> _games;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.5,
      padding: EdgeInsets.only(bottom: 20.0),
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.40,
        itemCount: _games.length,
        itemBuilder: (BuildContext context, index) {
          final Game item = _games[index];
          return Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).primaryColor.withAlpha(100),
                  offset: Offset(0, 15),
                  blurRadius: 20.0
                )
              ]
            ),
            child: ImageCard(item: item),
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FadeInImage(
            fit: BoxFit.fill,
            placeholder: AssetImage('lib/apps/app_for_collectors/assets/placeholder.png'),
            image: NetworkImage(item.image, scale: 1.0),
          ),
          Positioned(
            width: 60.0,
            height: 60.0,
            left: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20.0)),
              child: RaisedButton(
                onPressed: (){},
                child: Icon(Icons.mode_edit, color: Colors.black54, size: 25,),
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}