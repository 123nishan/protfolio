import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_clipper.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guy you looking for',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Card(

        child: Container(

          height: 500,
          width: 500,

          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Color(0xffE0E0E0),Color(0xffF5F5F5)]
            )
          ),
        ),
//          shape: BeveledRectangleBorder(
//            borderRadius: BorderRadius.circular(10.0)
//          ),
//          child: Text(
//            'TEST',
//          ),
        )
      )
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
