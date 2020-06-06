import 'package:flutter/material.dart';


class ReuseabaleCircularImage extends StatelessWidget {
  final String url;
  ReuseabaleCircularImage({this.url});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(url),
      radius: 50,
      backgroundColor: Colors.white30,
    );
  }
}
