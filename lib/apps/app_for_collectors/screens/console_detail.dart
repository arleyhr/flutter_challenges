import 'package:flutter/material.dart';
import 'package:flutter_challenges/apps/app_for_collectors/widgets/bottom_bar.dart';

import 'package:flutter_challenges/apps/app_for_collectors/models/console.dart';
import 'package:flutter_challenges/apps/app_for_collectors/models/game.dart';
import 'package:flutter_challenges/apps/app_for_collectors/widgets/swiper_view.dart';

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
      setState(() {
        _currentGame = game;
      });
    }
    _onSliderChange(value) {
      setState(() {
        _currentGame.percent = value.toInt();
      });
    }

    return Scaffold(
      bottomNavigationBar: BottomBar(color: Colors.white),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            floating: true,
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
            expandedHeight: 180,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              background: Container(
                height: double.infinity,
                alignment: Alignment.bottomLeft,
                child: _buildHeaderConsole(context),
              ),
            ),
          ),
          if (!_isGridSelected)
            SwiperView(
              currentGame: _currentGame,
              games: _games,
              onGameChange: _onGameChange,
              size: size,
              onSliderChange: _onSliderChange,
            ),
          if (_isGridSelected)
            SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  final item = _games[index];
                  return Text(item.name);
                },
                childCount: _games.length
              ),
            )
        ],
      ),
    );
  }

  Container _buildHeaderConsole(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      height: 110,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 40.0,
                color: Theme.of(context).primaryColor,
              ),
              Container(
                height: 70,
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
