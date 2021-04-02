import 'package:flutter/material.dart';
import 'package:app_for_collectors/models/game.dart';

class AppForCollectorsGame extends StatefulWidget {
  final gameId;
  AppForCollectorsGame({
    Key? key,
    this.gameId
  }) : super(key: key);

  _AppForCollectorsGameState createState() => _AppForCollectorsGameState(gameId: this.gameId);
}

class _AppForCollectorsGameState extends State<AppForCollectorsGame> {
  PageController? _pageController;
  late List<Game> _games;
  String? gameId;

  _AppForCollectorsGameState({ this.gameId });

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final game = games.firstWhere((g) => g.id.toString() == gameId);
    final consoleGames = games.where((g) => g.consoleId.toString() == game.consoleId.toString()).toList();

    final initialPage = consoleGames.indexOf(game);

    _pageController = new PageController(viewportFraction: 1, initialPage: initialPage);

    setState(() {
      _games = consoleGames;
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
                reverse: true,
                controller: _pageController,
                itemCount: _games.length,
                itemBuilder: (BuildContext context, index) {
                  final item = _games[index];

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Hero(
                        tag: 'game-${item.name}',
                        child: Image.network(item.image!, fit: BoxFit.contain),
                      ),
                      Container(
                        child: Text(item.name!, style: TextStyle(color: Colors.white, fontSize: 20)),
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