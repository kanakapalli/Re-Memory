import 'package:flutter/material.dart';
import 'package:flutter_unity_widget_example/menu_screen.dart';
import 'package:parallax_sensors_bg/parallax_sensors_bg.dart';

import 'package:flutter_unity_widget_example/view/widgets/Hbutton.dart';
import 'package:flutter_unity_widget_example/view/widgets/blur_containor.dart';

class TabBodyWidgetParallax extends StatefulWidget {
  String? PersonImage;
   TabBodyWidgetParallax({
    Key? key,
    this.PersonImage,
  }) : super(key: key);

  @override
  State<TabBodyWidgetParallax> createState() => _TabBodyWidgetParallaxState();
}

class _TabBodyWidgetParallaxState extends State<TabBodyWidgetParallax> {
  @override
  Widget build(BuildContext context) {
    return Parallax(
        sensor: ParallaxSensor.gyroscope,
        layers: [
          Layer(
            sensitivity: 4,
            preventCrop: true,
            offset: Offset(0, 0),
            // imageWidth: MediaQuery.of(context).size.width * 2,
            imageFit : BoxFit.fitHeight,
            child: Image.asset('assets/paraxellsky/bglayer.png', height: MediaQuery.of(context).size.height * 0.7,fit: BoxFit.fitHeight,),
          ),     
              Layer(
            sensitivity: 3,
            preventCrop: true,
            offset: Offset(0, 0),
            // imageWidth: MediaQuery.of(context).size.width * 2,
            imageFit : BoxFit.fitHeight,
            child: Image.asset('assets/paraxellsky/bgcloud1.png', ),
          ),

                     Layer(
            sensitivity: 5,
            preventCrop: true,
            offset: Offset(500, 0),
            // imageWidth: MediaQuery.of(context).size.width * 2,
            imageFit : BoxFit.fitHeight,
            child: Image.asset('assets/paraxellsky/bgcloud2.png', ),
          ),

       

 

          
                                 Layer(
            sensitivity: 7,
            preventCrop: true,
            offset: Offset(0, 550),
            // imageWidth: MediaQuery.of(context).size.width * 2,
            imageFit : BoxFit.fitHeight,
            child: Image.asset('assets/paraxellsky/b-2.png',height: MediaQuery.of(context).size.height * 0.75,fit: BoxFit.fitHeight, ),
          ),
          
                                  Layer(
            sensitivity: 10,
            preventCrop: true,
            offset: Offset(450, 950),
            // imageWidth: MediaQuery.of(context).size.width * 2,
            imageFit : BoxFit.fitHeight,
            child: Image.asset('assets/paraxellsky/b-1right.png',height: MediaQuery.of(context).size.height * 0.4,fit: BoxFit.fitHeight, ),
          ),
                                   
                                   
                                         widget.PersonImage != null ?    Layer(
            sensitivity: 5,
            preventCrop: true,
            offset: Offset(80, 600),
            // imageWidth: MediaQuery.of(context).size.width * 2,
            imageFit : BoxFit.fitHeight,
            child: Image.asset(widget.PersonImage! ,
            // 'assets/paraxellsky/personstandingex.png',
            height: MediaQuery.of(context).size.height * 0.75,fit: BoxFit.fitHeight, ),
          ) :     Layer(
            sensitivity: 5,
            preventCrop: true,
            offset: Offset(0, 150),
            // imageWidth: MediaQuery.of(context).size.width * 2,
            imageFit : BoxFit.fitHeight,
            child: DottedBorderContainer(),
          ),

                                        Layer(
            sensitivity: 10,
            preventCrop: true,
            offset: Offset(150, 1200),
            imageWidth: MediaQuery.of(context).size.width * 2,
            imageFit : BoxFit.fitHeight,
   
            child: Image.asset('assets/paraxellsky/b-1left.png', ),
          ),

                        Layer(
            sensitivity: 13,
            preventCrop: true,
            offset: Offset(0, 1500),
            // imageWidth: MediaQuery.of(context).size.width * 2,
            imageFit : BoxFit.fitHeight,

            child: Image.asset('assets/paraxellsky/bottom.png', ),
          ),

        ],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              Heavenly3DButton(
  text: "Heavenly Button",
  onPressed: () {
     Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MenuScreen()),);
  },
),

              Text(
                'Parallax Demo',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Using Gyroscope',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      )
    ;
  }
}