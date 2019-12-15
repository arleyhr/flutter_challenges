import 'package:flutter/material.dart';
import 'package:app_for_collectors/models/console.dart';
import 'package:app_for_collectors/theme.dart';

class ConsoleCard extends StatefulWidget {
  const ConsoleCard({
    Key key,
    @required this.isPair,
    @required this.item,
    @required this.onPressed,
  }) : super(key: key);

  final bool isPair;
  final Console item;
  final Function onPressed;


  @override
  _ConsoleCardState createState() => _ConsoleCardState();
}

class _ConsoleCardState extends State<ConsoleCard> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _pressed = false;
        });
        widget.onPressed();
      },
      onTapDown: (TapDownDetails details) {
        setState(() {
          _pressed = true;
        });
      },
      child: Container(
        margin: EdgeInsets.only(
          left: widget.isPair ? 20.0 : 10.0,
          right: widget.isPair ? 10.0 : 20.0,
          top: 5.0,
          bottom: 5.0,
        ),
        padding: EdgeInsets.only(top: 20.0, bottom: 20.0, left: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: primaryColor.withAlpha(60),
              offset: Offset(0, _pressed ? 0 : 15),
              blurRadius: _pressed ? 0 : 20
            )
          ]
        ),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  padding: EdgeInsets.only(left: 7.0, top: 3.0, right: 7.0, bottom: 3.0),
                  child: Text(widget.item.totalGames.toString())
                ),
                Container(
                  width: 120.0,
                  child: Text(
                    widget.item.name,
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 18
                    )
                  ),
                ),
              ],
            ),
            Positioned(
              child: Hero(
                tag: 'console-${widget.item.id}',
                child: Image.asset('lib/assets/${widget.item.image}', height: 70.0, package: 'app_for_collectors'),
              ),
              right: -45,
              top: 20,
            )
          ],
        )
      ),
    );
  }
}