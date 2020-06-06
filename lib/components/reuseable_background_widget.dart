import 'dart:ui';

import 'package:flutter/material.dart';

class ReuseableBackgroundWidget extends StatelessWidget {

  final Widget pageChild;
  final String backgroundImageUrl;
  ReuseableBackgroundWidget({this.backgroundImageUrl, @required this.pageChild});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(backgroundImageUrl),
            ),
          ),
        ),
        ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: new BoxDecoration(
                color: Colors.black87,
              ),
              child: pageChild,
            ),
          ),
        )
      ],
    );
  }
}


//NetworkImage(
//"https://images.unsplash.com/photo-1561214078-f3247647fc5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),