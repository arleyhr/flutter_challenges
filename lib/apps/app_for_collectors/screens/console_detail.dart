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
  bool _isGridSelected = false;
  List<Game> _games = List();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ConsoleDetailArguments arguments = ModalRoute.of(context).settings.arguments;
    Size size = MediaQuery.of(context).size;
    Console console = arguments.console;

    List<Game> gamesList = games.where((game) => game.consoleId == console.id).toList();

    setState(() {
      _console = console;
      _games = gamesList;
    });

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(_console.name),
      ),
      bottomNavigationBar: BottomBar(color: Colors.white),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            _buildHeaderConsole(context),
            GamesSwiper(size: size, games: _games),
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
