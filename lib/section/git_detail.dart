import 'package:flutter/material.dart';
class GitDetail extends StatefulWidget {
  @override
  _GitDetailState createState() => _GitDetailState();
}

class _GitDetailState extends State<GitDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network("https://github-readme-stats.codestackr.vercel.app/api?username=123nishan&show_icons=true&hide_border=true&count_private=true&theme=synthwave"),
    );
  }
}
