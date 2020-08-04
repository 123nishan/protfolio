

import 'package:flutter/material.dart';

import 'package:protfolio/section/body.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:protfolio/widgets/particle_background.dart';
import 'package:responsive_builder/responsive_builder.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ResponsiveBuilder(
      builder: (context,sizingInformation){
        return Scaffold(


          body: Center(
            child: FractionallySizedBox(
              widthFactor: 0.90,
              heightFactor: 0.95,
              child:  Container(
                height: double.infinity,
                width: double.infinity,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [Color(0xff71e2a6),Color(0xffbd93f9)]
                    )
                ),
                child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(

                            image: AssetImage('assets/images/background.png'),
                            fit: BoxFit.cover,
                          )
                      ),

                      child: Body(sizingInformation: sizingInformation,),
                    )
                ),
              ),
            ),
          ),
        );
      },

    );
  }
}
