
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:protfolio/home.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guy you looking for',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textSelectionColor: Color(0xffb31e43),
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
     home: HomePage(),
      //home: iPhoneXXS11Pro1(),
    );
  }
}
void errorBanner(var title,var message,BuildContext context){
  Align(
    alignment: Alignment.topRight,
    child: Flushbar(
      backgroundColor: Colors.red[600],
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.FLOATING,
      title: title,
      message: message,
      duration: Duration(seconds: 2),
      margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width*0.8, MediaQuery.of(context).size.width*0.01,MediaQuery.of(context).size.width*0.01, MediaQuery.of(context).size.width*0.01),
      borderRadius: 8,
      blockBackgroundInteraction: true,
      dismissDirection:
      FlushbarDismissDirection.VERTICAL,
    )..show(context),

  );
}

