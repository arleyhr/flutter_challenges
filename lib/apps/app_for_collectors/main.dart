import 'package:flutter/material.dart';


class AppForCollectors extends StatelessWidget {
  const AppForCollectors({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('collectors'),
        ),
        body: Container(
          child: Center(
            child: FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/');
              },
              child: Text('App for collectors'),
            ),
          ),
        ),
      ),
    );
  }
}