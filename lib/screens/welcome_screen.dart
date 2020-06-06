import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fitnesschallengeapp/components/reuseable_background_widget.dart';
import 'package:fitnesschallengeapp/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class WelcomeScreen extends StatefulWidget {
  static const route = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(
          seconds: 3,
        ),
        vsync: this,
        upperBound: 100);
    animation=CurvedAnimation(parent: controller,curve: Curves.easeInBack);
    controller.forward();


    controller.addListener(() {
      setState(() {});
//      print(controller.value);
      if(animation.isCompleted){
        Navigator.pushNamed(context,MyHomePage.route);
      print('completed');
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReuseableBackgroundWidget(
        backgroundImageUrl:kBackgroundImageUrl,
        pageChild: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 40, bottom: 30),
                  color: Colors.green,
                  height: controller.value,
                  width: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 5, bottom: 30),
                  child: ScaleAnimatedTextKit(
                      pause: Duration(seconds: 3),
                      text: [
                        "WELCOME!",
                      ],
                      textStyle: TextStyle(
                          fontSize: 50.0,
                          fontFamily: "Canterbury"
                      ),
                      textAlign: TextAlign.start,
                      alignment: AlignmentDirectional.topStart // or Alignment.topLeft
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
