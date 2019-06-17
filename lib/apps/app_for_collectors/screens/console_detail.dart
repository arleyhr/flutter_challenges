import 'package:flutter/material.dart';
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
        child: ListView.builder(
          itemCount: _games.length,
          itemBuilder: (BuildContext context, index) {
            final Game item = _games[index];
            return ListTile(
              title: Text(item.name),
            );
          },
        ),
      ),
    );
  }
}