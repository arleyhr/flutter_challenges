import 'package:flutter/material.dart';
import 'package:android_whatsapp/models/message.dart';

class ChatDetail extends StatefulWidget {
  final String? name;
  final String? photo;

  ChatDetail({ required this.name, required this.photo });

  _ChatDetailState createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              ClipOval(
                child: Image.network(
                  widget.photo!,
                  fit: BoxFit.cover,
                  width: 40.0,
                  height: 40.0,
                )
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Text(widget.name!),
              )
            ],
          ),
          actions: <Widget>[
            // IconButton(icon: Icon(Icons.videocam, color: Colors.white)),
            IconButton(icon: Icon(Icons.call, color: Colors.white), onPressed: () {},),
            IconButton(icon: Icon(Icons.more_vert, color: Colors.white), onPressed: () {},)
          ],
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://github.com/arleyhr/flutter_challenges/blob/develop/android_whatsapp/lib/assets/background.png?raw=true"),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      reverse: true,
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        final item = messages[index];
                        final prevItem = index > 0 ? messages[index - 1] : null;
                        final bool removeTopMargin = index > 0 && (item.toMe == prevItem!.toMe);
                        final double twentyPercent = MediaQuery.of(context).size.width * 0.2;
                        return Container(
                            margin: EdgeInsets.only(
                              left: item.toMe ? 10.0 : twentyPercent,
                              right: item.toMe ? twentyPercent : 10.0,
                              bottom: removeTopMargin ? 0.0 : 5.0,
                              top: 5.0
                            ),
                            padding: EdgeInsets.only(
                              left: 8.0,
                              right: 8.0,
                              top: 8.0,
                              bottom: 2.0
                            ),
                            width: 100.0,
                            decoration: BoxDecoration(
                              color: item.toMe ? Colors.white : Color.fromRGBO(220, 248, 200, 1),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(51, 51, 51, 0.6),
                                  blurRadius: 0.0,
                                  offset: Offset(0, 0)
                                )
                              ]
                            ),
                            child: Column(
                              mainAxisAlignment: item.toMe ? MainAxisAlignment.start : MainAxisAlignment.end,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(item.message!, style: TextStyle(fontSize: 16)),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      item.time!,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey
                                      ),
                                    ),
                                    !item.toMe ? Icon(Icons.done_all, size: 16, color: Colors.grey) : Container()
                                  ]
                                )
                              ],
                            )
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(51, 51, 51, 0.6),
                                  blurRadius: 0.0,
                                  offset: Offset(0, 0)
                                )
                              ]
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Icon(Icons.sentiment_very_satisfied, color: Colors.grey)
                                    ),
                                    onTap: () {}
                                  )
                                ),
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Write a message',
                                      hintStyle: TextStyle(
                                        color: Colors.grey
                                      )
                                    ),
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Icon(Icons.attach_file, size: 22.0, color: Colors.grey,)
                                    ),
                                    onTap: () {}
                                  )
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Icon(Icons.camera_alt, color: Colors.grey)
                                    ),
                                    onTap: () {}
                                  )
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: Material(
                            color: Color.fromRGBO(34, 153, 99, 1),
                            borderRadius: BorderRadius.circular(25.0),
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                child: Icon(Icons.mic, color: Colors.white),
                              )
                            ),
                          ),
                        )
                      ],
                    )
                  )
                ],
            ),
          ),
        )
      ),
    );
  }
}