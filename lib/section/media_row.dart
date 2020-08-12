import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:protfolio/main.dart';
import 'package:toast/toast.dart';
import 'package:url_launcher/url_launcher.dart';

class MediaRow extends StatefulWidget {
  @override
  _MediaRowState createState() => _MediaRowState();
}

class _MediaRowState extends State<MediaRow> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(child: InkWell( onTap: () async {
            const url = "https://twitter.com/oknishan?s=09";
            if (await canLaunch(url)) {
              await launch(url);
            } else {
              errorBanner("Error", "could not load url", context);
            }
          },child: Lottie.asset("images/layer.json"))),
          Flexible(
              child: InkWell(
                  onTap: () async {
                    const url = "https://www.linkedin.com/in/nishantimalsena/";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      errorBanner("Error", "could not load url", context);
                    }
                  },
                  child: Lottie.asset("images/linkedin.json"))),
          Flexible(
              child: InkWell(
                  onTap: () async {
                    const url = "https://github.com/123nishan";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      errorBanner("Error", "could not load url", context);
                    }
                  },
                  child: Lottie.asset("images/github.json"))),
        ],
      ),
    );
  }
}
