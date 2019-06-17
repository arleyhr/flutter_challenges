import 'package:flutter/material.dart';
import 'package:flutter_challenges/apps/app_for_collectors/models/console.dart';

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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ConsoleDetailArguments arguments = ModalRoute.of(context).settings.arguments;

    setState(() {
      _console = arguments.console;
    });
    return Scaffold(
      appBar: AppBar(
        title: Text(_console.name),
      ),
      body: Container(),
    );
  }
}