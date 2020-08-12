import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class MediaRow extends StatefulWidget {
  @override
  _MediaRowState createState() => _MediaRowState();
}

class _MediaRowState extends State<MediaRow> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return Container(
      child: Row(
        children: [
          Flexible(
            child: Lottie.asset("images/layer.json")
          ),
          Flexible(
              child: Lottie.asset("images/linkedin.json")
          )
        ],
      ),
    );
  }
}
