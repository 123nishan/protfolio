
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_clipper.dart';
import 'package:protfolio/core/functions.dart';
import 'package:protfolio/section/description.dart';
import 'package:protfolio/section/first_row.dart';
import 'package:protfolio/section/second_row.dart';
import 'package:protfolio/section/third_row.dart';
class Body extends StatefulWidget {
  final sizingInformation;

  const Body({Key key,  this.sizingInformation}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {


  @override
  Widget build(BuildContext context) {
    var mainWidth=MediaQuery.of(context).size.width;
    var mainHeight=MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.fromLTRB(paddingSize(mainHeight, 0.01),0 , paddingSize(mainHeight, 0.01), 0),
        child: Column(
          children: [
            CustomContainer(),
            Padding(
              padding:  EdgeInsets.fromLTRB(0, paddingSize(mainHeight, 0.09), 0, 0),
              child: Secondrow(),
            ),

            Padding(
              padding:  EdgeInsets.fromLTRB(0, paddingSize(mainHeight, 0.06), 0, 0),
              child: Description(),
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(0, paddingSize(mainHeight, 0.06), 0, 0),
              child: MediaRow(),
            ),
          ],

        ),
      ),
    );
  }
}
