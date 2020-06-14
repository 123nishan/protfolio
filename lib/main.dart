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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);

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

      body: Padding(
          padding: EdgeInsets.all(12.0),
        child: Card(

        child: Container(

          height: double.infinity,
          width: double.infinity,

          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Color(0xffE0E0E0),Color(0xffF5F5F5)]
            )
          ),



            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Card(
                color: Colors.amber,
                child: Container(
                  child: ListView(
                    children: <Widget>[

                          Container(
                            height: 200,
                           child: OverflowBox(
                             minHeight: 0.0,
                             minWidth: 0.0,
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
                                  child: Image(
                                    image:  AssetImage('assets/images/profile.jpg'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),

                            ),

                           ),

                          )


                    ],

                    ),
                  ),
                ),
              ),
            ),


      ),
//          shape: BeveledRectangleBorder(
//            borderRadius: BorderRadius.circular(10.0)
//          ),
//          child: Text(
//            'TEST',
//          ),
        )

       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
