import 'package:flutter/material.dart';
import 'package:android_whatsapp/widgets/photo_hero.dart';

class ChatTile extends StatelessWidget {
  ChatTile({
    required this.name,
    required this.imageUrl,
    required this.message,
    required this.time,
    required this.onTap
  });

  final String? name;
  final String? imageUrl;
  final String? message;
  final String? time;
  final Function onTap;

  _buildHeroPhoto(context) {
    var route = MaterialPageRoute(
      builder: (BuildContext context) {
        return Scaffold(
          body: Container(
            color: Colors.black,
            child: Center(
              child: PhotoHero(
                heroID: imageUrl,
                photo: imageUrl,
                width: MediaQuery.of(context).size.width,
                onTap: () => Navigator.of(context).pop()
              ),
            )
          )
        );
      }
    );
    return PhotoHero(
        heroID: imageUrl,
        photo: imageUrl,
        width: 50.0,
        onTap: () => Navigator.of(context).push(route)
      );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipOval(
        child: _buildHeroPhoto(context)
      ),
      title: Row(
        children: <Widget>[
          Text(
            name!,
            style: TextStyle(
              fontWeight: FontWeight.w500
            ),
          ),
          Text(
            time!,
            style: TextStyle(
              fontSize: 13.0,
              color: Colors.grey
            ),
          ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      subtitle: Text(
        message!,
        overflow: TextOverflow.ellipsis,
        maxLines: 1
      ),
      onTap: onTap as void Function()?,
    );
  }
}