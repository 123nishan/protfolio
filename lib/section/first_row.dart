import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

double widgetSize(size,percentage){
  return  (size*percentage);
}

class CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widgetSize(MediaQuery.of(context).size.height, 0.2),

      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.fromLTRB(50, 10, 0.0, 0.0),
          child: ClipPolygon(
            sides: 6,
            borderRadius: 5.0, // Default 0.0 degrees
            rotate: 90.0, // Default 0.0 degrees
            boxShadows: [
              PolygonBoxShadow(color: Colors.black, elevation: 1.0),
              PolygonBoxShadow(color: Colors.grey, elevation: 5.0)
            ],
            child: RepaintBoundary(
              child: Image(image: AssetImage('assets/images/profile.jpg'),
                fit: BoxFit.fill,

              ),
            ),
          ),
        ),

      ),

    );
  }
}
