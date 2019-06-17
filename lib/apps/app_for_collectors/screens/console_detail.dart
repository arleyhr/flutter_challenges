import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
        title: Text(_console.name),
      ),
      body: Container(
        color: Color.fromRGBO(245, 246, 255, 1),
        width: double.infinity,
        height: double.infinity,
        child: Swiper(
          layout: SwiperLayout.STACK,
          itemWidth: size.width * 0.6,
          itemHeight: size.height * 0.45,
          itemCount: _games.length,
          itemBuilder: (BuildContext context, index) {
            final Game item = _games[index];
            print(item.image);
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: FadeInImage(
                  fit: BoxFit.fill,
                  placeholder: AssetImage('lib/apps/app_for_collectors/assets/placeholder.png'),
                  image: NetworkImage(item.image, scale: 1.0),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}