import 'package:e3_redesign/theme_app.dart';
import 'package:e3_redesign/widgets/home_header.dart';
import 'package:flutter/material.dart';

class E3RedesignHome extends StatelessWidget {
  const E3RedesignHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeE3Redesign(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(400),
          child: HomeHeader(),
        ),
        body: ListView(
          children: <Widget>[
            
          ],
        )
      ),
    );
  }
}
