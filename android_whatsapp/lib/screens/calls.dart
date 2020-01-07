import 'package:flutter/material.dart';
import 'package:android_whatsapp/models/call.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: calls.length,
      itemBuilder: (context, i) {
        final item = calls[i];
        final callIcon = item.callMade ? Icons.call_made : Icons.call_received;
        final colorCallIcon = item.callMade ? Colors.green : Colors.red;

        return ListTile(
          leading: Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit:BoxFit.cover,
                image: NetworkImage(item.photo)
              )
            ),
          ),
          title: Text(
            item.name,
            style: TextStyle(
              fontWeight: FontWeight.w600
            )
          ),
          subtitle: Row(
            children: <Widget>[
              Icon(
                callIcon,
                color: colorCallIcon,
                size: 15.0,
              ),
              Text(item.timeAgo),
            ],
          ),
          trailing: IconButton(
            icon: Icon(
              Icons.call,
              color: Theme.of(context).primaryColor
            ),
            onPressed: () {}
          ),
        );
      }
    );
  }
}