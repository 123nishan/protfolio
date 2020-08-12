import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:protfolio/core/functions.dart';
import 'package:protfolio/section/body.dart';
import 'package:toast/toast.dart';
import 'package:url_launcher/url_launcher.dart';

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
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Flexible(
            child: Column(
              children: [
                Container(
                  child: AutoSizeText(
                   "Hey, i'm Nishan",
                    maxLines: 1,

                    style: TextStyle(fontFamily: 'Romanttica',fontWeight: FontWeight.bold,fontSize: 100,color:Theme.of(context).textSelectionColor ),

                  ),
                ),
                Padding(
                  padding:  EdgeInsets.fromLTRB(0, paddingSize(height, 0.02), 0, 0),
                  child: Container(

                    child: AutoSizeText(
                      "Software developer",
                      maxLines: 1,
                      style: TextStyle(fontFamily: 'Mathison',fontSize: 40,color:Theme.of(context).textSelectionColor ),

                    ),
                  ),
                ),

              ],
            ),
          ),
          Flexible(
            child: RaisedButton(
              color: Colors.transparent,
              onPressed: (){
                final Uri _emailLaunchUri = Uri(
                    scheme: 'mailto',
                    path: 'nishan_98@hotmail.com',
                    queryParameters: {
                      'subject': 'Saying Hello :p'
                    }
                );
                launch(_emailLaunchUri.toString());
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              child: Container(
                width: widgetSize(width, 0.12),
                height:  widgetSize(height, 0.08),
                child: Center(
                  child: Row(

                    children: [
                     Flexible(
                       child: Image(
                         image: AssetImage('assets/images/mail.png'),
                         height: widgetSize(height, 0.05),
                         width: widgetSize(width, 0.04),
                       ),
                     ),
                      Flexible(
                        child: SizedBox(
                          width: widgetSize(width, 0.01),
                        ),
                      ),
                      Flexible(
                        child: AutoSizeText(
                          "Say Hello",
                          style: TextStyle(fontFamily: "Ambit",fontSize: 20,color: Colors.white),
                          maxLines: 1,
                        ),
                      ),
                    ],
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
