import 'package:flutter/material.dart';

import 'package:flutter_challenges/apps/app_for_collectors/models/console.dart';
import 'package:flutter_challenges/apps/app_for_collectors/screens/console_detail.dart';
import 'package:flutter_challenges/apps/app_for_collectors/widgets/console_card.dart';
import 'package:flutter_challenges/apps/app_for_collectors/widgets/placeholder_card.dart';

class GamesTab extends StatelessWidget {
  final _placeholderButton = 1;

  _onConsolePressed({ BuildContext context, Console console }) {
    Navigator.pushNamed(context, 'afc_games', arguments: ConsoleDetailArguments(console: console));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(245, 246, 255, 1),
      padding: EdgeInsets.only(top: 20.0),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, index) {
                bool isPair = (index % 2 == 0);

              if (index == consoles.length) {
                return PlaceholderCard(isPair: isPair, onPressed: () {},);
              }

              final item = consoles[index];

                return ConsoleCard(
                  isPair: isPair,
                  item: item,
                  onPressed: () => _onConsolePressed(context: context, console: item)
                );
              },
              childCount: consoles.length + _placeholderButton, // +1 placeholder
            )
          )
        ],
      )
    );
  }
}

