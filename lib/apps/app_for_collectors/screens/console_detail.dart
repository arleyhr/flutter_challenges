import 'package:flutter/material.dart';
import 'package:flutter_challenges/apps/app_for_collectors/widgets/bottom_bar.dart';
import 'package:flutter_challenges/apps/app_for_collectors/widgets/games_swiper.dart';

import 'package:flutter_challenges/apps/app_for_collectors/models/console.dart';
import 'package:flutter_challenges/apps/app_for_collectors/models/game.dart';

class ConsoleDetailArguments {
  ConsoleDetailArguments({ this.console });

  Console console;
}

class ConsoleDetail extends StatefulWidget {
  const ConsoleDetail({Key key}) : super(key: key);

  @override
  _ConsoleDetailState createState() => _ConsoleDetailState();
}

class _ConsoleDetailState extends State<ConsoleDetail> {
  Console _console;
  Game _currentGame;
  bool _isGridSelected = false;
  List<Game> _games = List();

  @override
  void initState() {
    super.initState();
  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ConsoleDetailArguments arguments = ModalRoute.of(context).settings.arguments;
    Console console = arguments.console;

    List<Game> gamesList = games.where((game) => game.consoleId == console.id).toList();

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
      print(game.rating);
      setState(() {
        _currentGame = game;
      });
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_console.name),
            Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(49, 50, 124, 1),
                borderRadius: BorderRadius.circular(20.0)
              ),
              padding: EdgeInsets.only(left: 7.0, top: 3.0, right: 7.0, bottom: 3.0),
              child: Text(_console.totalGames.toString(), style: TextStyle(fontSize: 12))
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, color: Colors.white, size: 30),
          )
        ],
      ),
      bottomNavigationBar: BottomBar(color: Colors.white),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            _buildHeaderConsole(context),
            SwiperSection(currentGame: _currentGame, size: size, games: _games, onGameChange: _onGameChange),
            Text(_currentGame.name, style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 20.0
            ), textAlign: TextAlign.center),
            SizedBox(
              height: 5,
            ),
            RatingStars(currentGame: _currentGame),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Slider(
                value: _currentGame.percent.toDouble(),
                min: 0,
                max: 100,
                inactiveColor: Color.fromRGBO(200, 202, 221, 1),
                onChanged: (value){
                  setState(() {
                    _currentGame.percent = value.toInt();
                  });
                },
              ),
            )
          ],
        )
      ),
    );
  }

  Container _buildHeaderConsole(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 35.0,
                color: Theme.of(context).primaryColor,
              ),
              Container(
                decoration: BoxDecoration(
                color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10.0,
                    ),
                    _buildGridButtons(context),
                  ],
                ),
              ),
            ],
          ),
          HeroConsole(console: _console),
        ],
      ),
    );
  }

  Row _buildGridButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconButton(
          onPressed: () {
            setState(() {
              _isGridSelected = false;
            });
          },
          icon: Icon(Icons.view_carousel),
          iconSize: 35,
          color: !_isGridSelected ? Theme.of(context).primaryColor : Colors.grey,
        ),
        SizedBox(),
        IconButton(
          onPressed: () {
            setState(() {
              _isGridSelected = true;
            });
          },
          icon: Icon(Icons.view_module),
          iconSize: 35,
          color: _isGridSelected ? Theme.of(context).primaryColor : Colors.grey,
        ),
      ],
    );
  }
}

class RatingStars extends StatelessWidget {
  const RatingStars({
    Key key,
    @required Game currentGame,
  }) : _currentGame = currentGame, super(key: key);

  final Game _currentGame;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (int index) {
        return Icon(
          index < _currentGame.rating ? Icons.star : Icons.star_border,
          color: Color.fromRGBO(200, 202, 221, 1),
          size: 22,
        );
      }),
    );
  }
}

class SwiperSection extends StatelessWidget {
  const SwiperSection({
    Key key,
    @required Game currentGame,
    @required this.size,
    @required List<Game> games,
    @required this.onGameChange,
  }) : _currentGame = currentGame, _games = games, super(key: key);

  final Game _currentGame;
  final Size size;
  final List<Game> _games;
  final Function onGameChange;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        RightStats(selectedGame: _currentGame),
        GamesSwiper(size: size, games: _games, onItemChange: onGameChange),
      ],
    );
  }
}

class RightStats extends StatelessWidget {
  RightStats({
    Key key,
    this.selectedGame
  }) : super(key: key);

  Game selectedGame;

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
              Icons.bubble_chart, size: 35, color: Theme.of(context).primaryColor
            ),
          ),
          Text('${selectedGame.percent}%', style: TextStyle(
            fontSize: 18,
            height: 0.5,
            color: Colors.grey,
            fontWeight: FontWeight.w100
          )),
          SizedBox(
            height: 35,
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.people, size: 35, color: Theme.of(context).primaryColor
            ),
          ),
          Text(selectedGame.people.toString(), style: TextStyle(
            height: 0.5,
            fontSize: 18,
            color: Colors.grey,
            fontWeight: FontWeight.w100
          )),
          SizedBox(
            height: 35,
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.favorite_border, size: 35, color: Theme.of(context).primaryColor
            ),
          )
        ],
      ),
    );
  }
}

class HeroConsole extends StatelessWidget {
  const HeroConsole({
    Key key,
    @required Console console,
  }) : _console = console, super(key: key);

  final Console _console;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      child:  Hero(
        tag: 'console-${_console.id}',
        child: Image.asset('lib/apps/app_for_collectors/assets/${_console.image}', height: 70.0),
      ),
    );
  }
}
