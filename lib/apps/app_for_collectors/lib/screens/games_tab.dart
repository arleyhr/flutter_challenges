import 'package:flutter/material.dart';
import 'package:shared_app/application.dart';

import 'package:app_for_collectors/routes.dart';

import 'package:app_for_collectors/models/console.dart';
import 'package:app_for_collectors/widgets/console_card.dart';
import 'package:app_for_collectors/widgets/placeholder_card.dart';

class GamesTab extends StatelessWidget {
  final _placeholderButton = 1;

  _onConsolePressed({required BuildContext context, required Console console}) {
    Application.router!.navigateTo(
        context, AppForCollectorsRoutes.getConsolePath(consoleId: console.id));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(245, 246, 255, 1),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate([SizedBox(height: 20)]),
            ),
            SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, index) {
                    bool isPair = (index % 2 == 0);

                    if (index == consoles.length) {
                      return PlaceholderCard(
                        isPair: isPair,
                        onPressed: () {},
                      );
                    }

                    final item = consoles[index];

                    return ConsoleCard(
                        isPair: isPair,
                        item: item,
                        onPressed: () =>
                            _onConsolePressed(context: context, console: item));
                  },
                  childCount:
                      consoles.length + _placeholderButton, // +1 placeholder
                ))
          ],
        ));
  }
}
