import 'package:flutter/material.dart';
import 'package:flutter_challenges/apps/app_for_collectors/models/game.dart';

class GameArguments {
  int selectedIndex;
  List<Game> games;
  GameArguments({ this.selectedIndex, this.games });
}

class AppForCollectorsGame extends StatefulWidget {
  AppForCollectorsGame({ Key key }) : super(key: key);

  _AppForCollectorsGameState createState() => _AppForCollectorsGameState();
}

class _AppForCollectorsGameState extends State<AppForCollectorsGame> {
  PageController _pageController;
  List<Game> _games;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    GameArguments arguments = ModalRoute.of(context).settings.arguments;

    _pageController = new PageController(viewportFraction: 1, initialPage: arguments.selectedIndex);

    setState(() {
      _games = arguments.games;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Stack(
            children: <Widget>[
              PageView.builder(
                controller: _pageController,
                itemCount: _games.length,
                itemBuilder: (BuildContext context, index) {
                  final item = _games[index];

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Hero(
                        tag: 'game-${item.name}',
                        child: Image.network(item.image, fit: BoxFit.contain),
                      ),
                      Container(
                        child: Text(item.name, style: TextStyle(color: Colors.white, fontSize: 20)),
                        margin: EdgeInsets.only(top: 30),
                      )
                    ],
                  );
                },
              ),
              Positioned(
                right: -10,
                top: 20,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.close, color: Colors.white, size: 30)
                ),
              )
            ],
          ),
        )
      )
    );
  }
}