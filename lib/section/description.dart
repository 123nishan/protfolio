import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:protfolio/core/functions.dart';
class Description extends StatefulWidget {
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: Padding(
              padding:  EdgeInsets.fromLTRB(paddingSize(width, 0.1),0 , paddingSize(width, 0.07), 0),
              child: AutoSizeText(
                "Currently working as application developer with java and flutter. Worked on Python, ASP.net, Angular, PHP, Node.js",
                maxLines: 3,

                style: TextStyle(fontFamily: "Ambit",fontSize: 22,color:Theme.of(context).textSelectionColor ),
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding:  EdgeInsets.fromLTRB(paddingSize(width, 0.07),0 , paddingSize(width, 0.07), 0),
              child: AutoSizeText(
                "Worked with Sb solution, Garage Inc. I make it work, make it right, make it fast.  ",
                maxLines: 3,

                style: TextStyle(fontFamily: "Ambit",fontSize: 22,color:Theme.of(context).textSelectionColor ),
              ),
            ),
          )
        ],
      ),

    );
  }
}
