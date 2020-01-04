import 'package:flutter/material.dart';

const popcorn = "https://res.cloudinary.com/arleyhr/image/upload/v1578169554/flutter/ticket-reservation-interaction/popcorn_iqpsty.png";
const corn = "https://res.cloudinary.com/arleyhr/image/upload/v1578065175/flutter/ticket-reservation-interaction/corn_oyow5w.png";
const redColor = Color(0xFFF74200);

class TicketReservationInteraction extends StatefulWidget {
  TicketReservationInteraction({Key key}) : super(key: key);

  @override
  _TicketReservationInteractionState createState() => _TicketReservationInteractionState();
}

class _TicketReservationInteractionState extends State<TicketReservationInteraction> {
  double _selectionPosition = 0.0;
  double _selectionPositionWidth = 35;
  double _selectionPositionMargin = 15;
  int _numberOfButtons = 6;
  int _selectedNumber = 0;

  double _middlePopcornScale = 150;
  double _middlePopcornMargin = 40;

  double _leftPopcornScale = 0;
  double _leftPopcornMargin = 0;

  double _rightPopcornScale = 0;
  double _rightPopcornMargin = 0;

  _resetRightSide() {
    setState(() {
      _rightPopcornScale = 0;
      _rightPopcornMargin = 0;
    });
  }

  _resetLeftSide() {
    setState(() {
      _leftPopcornScale = 0;
      _leftPopcornMargin = 0;
    });
  }

  _resetSides() {
    _resetRightSide();
    _resetLeftSide();
  }

  _setFullMiddle() {
    setState(() {
      _middlePopcornScale = 180;
      _middlePopcornMargin = 0;
    });
  }

  _setFullLeftSide() {
    _setFullMiddle();
    setState(() {
      _leftPopcornScale = 130;
      _leftPopcornMargin = 0;
    });
  }

  _setFillRightSide() {
    _setFullLeftSide();
    setState(() {
      _rightPopcornScale = 130;
      _rightPopcornMargin = 0;
    });
  }

  void _handleAnimation(itemNumber) {
    final newPosition = (itemNumber * _selectionPositionWidth) + (itemNumber * _selectionPositionMargin);
    setState(() {
      _selectionPosition = newPosition;
    });

    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _selectedNumber = itemNumber;
      });
    });

    switch (itemNumber) {
      case 0:
        _resetSides();
        setState(() {
          _middlePopcornScale = 150;
          _middlePopcornMargin = 40;
        });
        break;
      case 1:
        _resetSides();
        _setFullMiddle();
        break;
      case 2:
        _setFullMiddle();
        _resetRightSide();
        setState(() {
          _leftPopcornScale = 100;
          _leftPopcornMargin = 40;
        });
        break;
      case 3:
        _setFullLeftSide();
        _resetRightSide();
        break;
      case 4:
        _setFullLeftSide();
        setState(() {
          _rightPopcornScale = 100;
          _rightPopcornMargin = 40;
        });
        break;
      case 5:
        _setFillRightSide();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(10))
      ),
       child: Column(
         children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: IconButton(icon: Icon(Icons.close, color: Colors.grey, size: 26), onPressed: Navigator.of(context).pop),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text("How many seats?", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  ),
                ),
                Expanded(flex: 1, child: SizedBox()),
              ],
            ),
            Container(
              height: 160,
              width: 250,
              margin: EdgeInsets.only(top: 30, bottom: 20),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 25,
                    bottom: 10,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInCubic,
                      margin: EdgeInsets.only(top: _leftPopcornMargin),
                      height: _leftPopcornScale,
                      child: AnimatedOpacity(
                        duration: Duration(milliseconds: 500),
                        opacity: _leftPopcornScale > 1 ? 1 : 0,
                        child: Image.network(popcorn, fit: BoxFit.cover)
                      )
                    )
                  ),
                  Positioned(
                    right: 25,
                    bottom: 10,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInCubic,
                      margin: EdgeInsets.only(top: _rightPopcornMargin),
                      height: _rightPopcornScale,
                      child: AnimatedOpacity(
                        duration: Duration(milliseconds: 500),
                        opacity: _rightPopcornScale > 1 ? 1 : 0,
                        child: Image.network(popcorn, fit: BoxFit.cover)
                      )
                    )
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInCubic,
                      height: _middlePopcornScale,
                      margin: EdgeInsets.only(top: _middlePopcornMargin),
                      child: Image.network(popcorn, fit: BoxFit.cover),
                    ),
                  ),
                ]
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.8,
              child: Container(
                height: 60,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    AnimatedPositioned(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn,
                      top: 10,
                      left: _selectionPosition,
                      child: Container(
                        decoration:  BoxDecoration(
                          color: redColor,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        height: 40,
                        width: _selectionPositionWidth,
                        child: null,
                      ),
                    ),
                    Row(
                      children: List<Widget>.generate(_numberOfButtons, (i) {
                        final lastIndex  = _numberOfButtons - 1;
                        return Container(
                          margin: EdgeInsets.only(right: i != lastIndex ? _selectionPositionMargin : 0),
                          width: _selectionPositionWidth,
                          height: 40,
                          child: RawMaterialButton(
                            onPressed: () {
                              _handleAnimation(i);
                            },
                            child:Text((i + 1).toString(), style: TextStyle(fontSize: 18, color: _selectedNumber == i ? Colors.white : Colors.black54), textAlign: TextAlign.center),
                          ),
                        );
                      })
                    ),
                  ],
                ),
              ),
            )
         ],
       )
    );
  }
}
