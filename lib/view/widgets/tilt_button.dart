import 'package:flutter/material.dart';
import 'package:flutter_tilt/flutter_tilt.dart';

class TiltButton extends StatefulWidget {
  const TiltButton({Key? key}) : super(key: key);

  @override
  _TiltButtonState createState() => _TiltButtonState();
}

class _TiltButtonState extends State<TiltButton> {
  TiltDataModel? tiltData;
  String gestureMove = '';
  String gestureLeave = '';
  bool isTilted = false;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Tilt(
        borderRadius: BorderRadius.circular(30),
        
        onGestureMove: (TiltDataModel tiltDataModel, GesturesType gesturesType) {
          setState(() {
            tiltData = tiltDataModel;
            gestureMove = gesturesType.name;
          });
        },
        onGestureLeave: (TiltDataModel tiltDataModel, GesturesType gesturesType) {
          setState(() {
            tiltData = tiltDataModel;
            gestureLeave = gesturesType.name;
          });
        },
        child: Container(
          width: 350,
          height: 200,
          alignment: Alignment.center,
          color: Colors.blueAccent,
          child: const Text(
            'Tilt Button ✨',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
