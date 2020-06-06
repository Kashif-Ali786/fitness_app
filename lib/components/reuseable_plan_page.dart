import 'package:fitnesschallengeapp/screens/plan_screen.dart';
import 'package:flutter/material.dart';

class ReuseablePlanPage extends StatelessWidget {
  final String heading;
  final String subHeading;
  final Widget pageChidren;
  ReuseablePlanPage({this.heading, this.subHeading, this.pageChidren});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Plan(),
                  ),
                );
              },
              child: Icon(Icons.clear),
            ),
          ),
          Text(
            heading.toUpperCase(),
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 12,
          ),
          subHeading != null
              ? Text(
                  subHeading,
                  style: TextStyle(fontSize: 16.0),
                )
              : SizedBox(
                  height:20,
                ),
          pageChidren,
        ],
      ),
    );
  }
}
