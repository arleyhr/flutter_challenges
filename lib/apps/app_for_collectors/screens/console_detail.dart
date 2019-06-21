import 'package:flutter/material.dart';
import 'package:flutter_challenges/apps/app_for_collectors/widgets/bottom_bar.dart';

import 'package:flutter_challenges/apps/app_for_collectors/models/console.dart';
import 'package:flutter_challenges/apps/app_for_collectors/models/game.dart';
import 'package:flutter_challenges/apps/app_for_collectors/widgets/console_detail_sliver_appbar.dart';
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
                  bool isPair = (index % 2 == 0);
                  return Container(
                    margin: EdgeInsets.only(
                      left: isPair ? 20 : 0,
                      right: !isPair ? 20 : 0,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: FadeInImage(
                        placeholder: AssetImage('lib/apps/app_for_collectors/assets/placeholder.png'),
                        image: NetworkImage(item.image, scale: 1.0),
                        fit: BoxFit.cover,
                      ),
                    )
                  );
                },
                childCount: _games.length
              ),
            )
        ],
      ),
    );
  }
}
