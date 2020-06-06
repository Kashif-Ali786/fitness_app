import 'package:fitnesschallengeapp/components/reuseable_background_widget.dart';
import 'package:fitnesschallengeapp/components/reuseable_circular_image.dart';
import 'package:fitnesschallengeapp/components/reuseable_plan_page.dart';
import 'package:fitnesschallengeapp/constants.dart';
import 'file:///E:/Flutter%20Projects/fitness_challenge_app/lib/pages/plan_pages/exercise_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KnowAbout extends StatelessWidget {
  static const String route = 'know_about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReuseableBackgroundWidget(
          backgroundImageUrl: kBackgroundImageUrl,
          pageChild: ReuseablePlanPage(
            heading: 'Lets\'s know about you',
            subHeading:
                'Let us know you better to help boost your workout results',
            pageChidren: Column(
              children: <Widget>[
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ReuseabaleCircularImage(
                      url:
                          'https://freesvg.org/img/dagobert83_female_user_icon.png',
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    ReuseabaleCircularImage(
                        url:
                            'https://freesvg.org/img/acspike_male_user_icon.png'),
                  ],
                ),
                SizedBox(
                  height: 200,
                ),
                Container(
                  height: 70,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ExerciseCategory.route);
                    },
                    color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 30,
                        ),
                        Text(
                          'NEXT',
                          style: kFlatButtonTextStyle,
                        ),
                        Container(
                            padding: EdgeInsets.only(right: 20),
                            child: Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
