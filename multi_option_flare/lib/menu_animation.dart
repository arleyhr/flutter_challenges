import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';

enum AnimationToPlay {
  Activate,
  Deactivate,
  CameraTapped,
  PulseTapped,
  ImageTapped
}


class MenuAnimation extends StatefulWidget {
  MenuAnimation({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MenuAnimationState createState() => _MenuAnimationState();
}

class _MenuAnimationState extends State<MenuAnimation> {
  final FlareControls _animationControls = FlareControls();
  AnimationToPlay _animationToPlay = AnimationToPlay.Activate;

  static const double MenuWidth = 295.0;
  static const double MenuHeight = 251.0;

  bool isOpen = false;

  String _getAnimationName(AnimationToPlay animationToPlay) {
    switch (animationToPlay) {
      case AnimationToPlay.Activate:
        return 'activate';
      case AnimationToPlay.Deactivate:
        return 'deactivate';
      case AnimationToPlay.CameraTapped:
        return 'camera_tapped';
      case AnimationToPlay.PulseTapped:
        return 'pulse_tapped';
      case AnimationToPlay.ImageTapped:
        return 'image_tapped';
      default:
        return 'deactivate';
    }
  }

  void _setAnimationToPlay(AnimationToPlay animation) {
    _animationControls.play(_getAnimationName(animation));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MenuWidth,
      height: MenuHeight,
      child: GestureDetector(
        onTapUp: (TapUpDetails tapInfo) {
          var localTouchPosition = (context.findRenderObject() as RenderBox).globalToLocal(tapInfo.globalPosition);

          // top buttons
          var topHalfTouched = localTouchPosition.dy < MenuHeight / 2;
          var leftSideTouched = topHalfTouched && (localTouchPosition.dx < MenuWidth / 3);
          var rightSideTouched = topHalfTouched && (localTouchPosition.dx > (MenuWidth / 3) * 2);
          var middleTouched = topHalfTouched && !leftSideTouched && !rightSideTouched;

          if (leftSideTouched) {
            _setAnimationToPlay(AnimationToPlay.CameraTapped);
          }
          else if (middleTouched) {
            _setAnimationToPlay(AnimationToPlay.PulseTapped);
          }
          else if (rightSideTouched) {
            _setAnimationToPlay(AnimationToPlay.ImageTapped);
          }
          else {
            _setAnimationToPlay(isOpen ? AnimationToPlay.Deactivate : AnimationToPlay.Activate);

            isOpen = !isOpen;
          }
        },
        child: FlareActor(
          'assets/MultiOptionButton.flr',
          controller: _animationControls,
          animation: _getAnimationName(AnimationToPlay.Deactivate)
        ),
      )
    );
  }
}
