import 'dart:ui';

import 'package:fitnesschallengeapp/components/reuseable_background_widget.dart';
import 'package:fitnesschallengeapp/constants.dart';
import 'file:///E:/Flutter%20Projects/fitness_challenge_app/lib/pages/plan_pages/your_goals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Plan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plan'),
        actions: <Widget>[
          Icon(Icons.star),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: ReuseableBackgroundWidget(backgroundImageUrl: kBackgroundImageUrl,
        pageChild: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 23,
                      child: CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 20.0,
                          child: Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 35.0,
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'UNLOCK PLAN',
                      style: TextStyle(
                          fontSize: 40.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Achieve your goal with your personalized plan',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, YourGoals.route);
                  },
                  child: Text(
                    'MODIFY',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
