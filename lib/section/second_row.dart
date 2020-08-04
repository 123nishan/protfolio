import 'package:flutter/material.dart';
import 'package:protfolio/section/body.dart';
import 'package:toast/toast.dart';

class Secondrow extends StatefulWidget {
  @override
  _SecondrowState createState() => _SecondrowState();
}

class _SecondrowState extends State<Secondrow> {

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      child: Row(
        children: [
          Container(
            child: Text(
     "Hey, i'm Nishna",

              style: TextStyle(fontFamily: 'Ambit',fontWeight: FontWeight.bold,fontSize: 80,),

            ),
          ),
          Container(
            child: RaisedButton(
              child: Container(
                width: 50,
                height: 60,
                child: Center(
                  child: Text(
                    "Say Hello"
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
