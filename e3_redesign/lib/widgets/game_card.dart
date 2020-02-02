import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  const GameCard({
    Key key,
    @required this.image,
    @required this.name,
    @required this.description,
    @required this.likes,
    this.platforms,
    this.exclusiveLogo,
  }) : super(key: key);

  final Image image;
  final String name;
  final String description;
  final num likes;
  final String platforms;
  final Image exclusiveLogo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      child: Stack(
        children: <Widget>[
          Card(
            image: image,
            name: name,
            description: description,
            platforms: platforms,
          ),
          Positioned(
            right: 20,
            top: 0,
            child: Row(children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(5)
                ),
                height: 5,
                width: 5,
              ),
              SizedBox(width: 4),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(5)
                ),
                height: 5,
                width: 5,
              ),
            ],),
          ),
          Positioned(
            top: 50,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 10
                  )
                ]
              ),
              width: 35,
              height: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.arrow_drop_up),
                  Text("${likes}K", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                  Icon(Icons.arrow_drop_down, color: Colors.grey),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key key,
    @required this.image,
    @required this.name,
    @required this.description,
    this.platforms,
    this.exclusiveLogo,
  }) : super(key: key);

  final Image image;
  final String name;
  final String description;
  final String platforms;
  final Image exclusiveLogo;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.95,
      heightFactor: 1,
      child: Container(
        margin: EdgeInsetsDirectional.only(top: 15),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 30,
              offset: Offset(0, 35),
              color: Colors.grey.withOpacity(.30),
              spreadRadius: -20
            )
          ]
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomRight: Radius.circular(25)
          ),
          child: Stack(
            children: <Widget>[
              image,
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ClipPath(
                      clipper: CardCustomClipper(),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: 30,
                        width: double.infinity,
                        color: Colors.white,
                        child: Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      height: 35,
                      width: double.infinity,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(description, style: TextStyle(fontSize: 12, letterSpacing: -1)),
                          Text(platforms, style: TextStyle(fontSize: 10, letterSpacing: -1)),
                        ],
                      )
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class CardCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;

    Path path = new Path();

    path.moveTo(0, height);
    path.lineTo(0, 0);

    path.lineTo(width * 0.27, 0);


    path.quadraticBezierTo(width * 0.35, 0, width * 0.37, height * 0.4);
    path.quadraticBezierTo(width * 0.4, height, width * 0.5, height);

    path.lineTo(width * 0.85, height);

    path.quadraticBezierTo(width * 0.98, height * 0.9, width, 0);
    path.lineTo(width, 0);
    path.lineTo(width, height);
    path.close();



    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}