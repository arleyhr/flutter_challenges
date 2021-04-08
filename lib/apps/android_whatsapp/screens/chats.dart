import 'package:flutter/material.dart';
import '../models/chat.dart';

import '../screens/chat_detail.dart';

import '../widgets/chat_tile.dart';

class ChatsScreen extends StatefulWidget {
  _ChatsScreenState createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messagesData.length,
        itemBuilder: (context, i) {
          var item = messagesData[i];

          return Column(children: <Widget>[
            Divider(
              height: 10.0,
            ),
            ChatTile(
                name: item.name,
                imageUrl: item.imageUrl,
                time: item.time,
                message: item.message,
                onTap: () {
                  var route = new MaterialPageRoute(
                      builder: (BuildContext context) => new ChatDetail(
                          name: item.name, photo: item.imageUrl));
                  Navigator.of(context).push(route);
                })
          ]);
        });
  }
}
