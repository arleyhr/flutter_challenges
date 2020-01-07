import 'package:flutter/material.dart';
import 'package:shared_app/application.dart';

import 'package:app_for_collectors/routes.dart';

import 'package:app_for_collectors/models/console.dart';
import 'package:app_for_collectors/models/game.dart';
import 'package:app_for_collectors/widgets/bottom_bar.dart';
import 'package:app_for_collectors/widgets/console_detail_sliver_appbar.dart';
import 'package:app_for_collectors/widgets/swiper_view.dart';


class AppForCollectorsConsole extends StatefulWidget {
  final consoleId;
  AppForCollectorsConsole({
    Key key,
    this.consoleId,
  }) : super(key: key);

  @override
  _AppForCollectorsConsoleState createState() => _AppForCollectorsConsoleState(consoleId: this.consoleId);
}

class _AppForCollectorsConsoleState extends State<AppForCollectorsConsole> {
  String consoleId;
  Console _console;
  Game _currentGame;
  bool _isGridSelected = false;
  List<Game> _games = List();

  _AppForCollectorsConsoleState({ this.consoleId });

  @override
  void initState() {
    super.initState();
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Console console = consoles.firstWhere((c) => c.id.toString() == consoleId);

    List<Game> gamesList = games.where((game) => game.consoleId.toString() == consoleId).toList();

    setState(() {
      _console = console;
      _games = gamesList;
      _currentGame = gamesList[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    _onGameChange(Game game) {
      setState(() {
        _currentGame = game;
      });
    }

    _onSliderChange(value) {
      setState(() {
        _currentGame.percent = value.toInt();
      });
    }

    _setGridSelected() {
      setState(() {
        _isGridSelected = true;
      });
    }

    _setSwiperSelected() {
      setState(() {
        _isGridSelected = false;
      });
    }
    _onGameTap (gameId) {
      Application.router.navigateTo(context, AppForCollectorsRoutes.getGamePath(gameId: gameId));
    }

    return Scaffold(
      bottomNavigationBar: BottomBar(color: Colors.white),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          ConsoleDetailSliverAppBar(
            title: _console.name,
            totalGames: _console.totalGames.toString(),
            consoleId: _console.id.toString(),
            consoleImage: _console.image,
            isGridSelected: _isGridSelected,
            setGridSelected: _setGridSelected,
            setSwiperSelected: _setSwiperSelected,
          ),
          if (!_isGridSelected)
            SwiperView(
              currentGame: _currentGame,
              games: _games,
              onGameChange: _onGameChange,
              size: size,
              onSliderChange: _onSliderChange,
              onGameTap: _onGameTap,
            ),
          if (_isGridSelected)
            ...[
              SliverList(
                delegate: SliverChildListDelegate([
                  SizedBox(height: 40)
                ]),
              ),
              SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  final item = _games[index];
                  bool isPair = (index % 2 == 0);
                  return InkWell(
                    onTap: () {
                      _onGameTap(_games[index].id);
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: isPair ? 20 : 0,
                        right: !isPair ? 20 : 0,
                      ),
                      child: Hero(
                        tag: 'game-${item.name}',
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: FadeInImage(
                            placeholder: AssetImage('lib/assets/placeholder.png', package: 'app_for_collectors'),
                            image: NetworkImage(item.image, scale: 1.0),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ),
                  );
                },
                childCount: _games.length
              ),
            )
          ]
        ],
      ),
    );
  }
}
