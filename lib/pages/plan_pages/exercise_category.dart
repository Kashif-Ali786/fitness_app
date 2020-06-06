import 'package:fitnesschallengeapp/constants.dart';
import 'file:///E:/Flutter%20Projects/fitness_challenge_app/lib/pages/plan_pages/feeling_category.dart';
import 'package:flutter/material.dart';
import 'package:fitnesschallengeapp/components/reuseable_background_widget.dart';
import 'package:fitnesschallengeapp/components/reuseable_flat_button.dart';
import 'package:fitnesschallengeapp/components/reuseable_plan_page.dart';


class ExerciseCategory extends StatelessWidget {
  static const String route = 'exercise_category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReuseableBackgroundWidget(
          backgroundImageUrl: kBackgroundImageUrl,
          pageChild: ReuseablePlanPage(
            heading: 'How often do you exercise?',
            pageChidren: Column(
              children: <Widget>[
                ReuseableFlatButton(
                  title: 'Hardly',
                  onPress: () {
                    Navigator.pushNamed(context, FeelingsCategory.route);
                  },
                ),
                ReuseableFlatButton(
                  title: 'Sometimes',
                  onPress: () {
                    Navigator.pushNamed(context, FeelingsCategory.route);
                  },
                ),
                ReuseableFlatButton(
                  title: '2-3 times a week',
                  onPress: () {
                    Navigator.pushNamed(context, FeelingsCategory.route);
                  },
                ),
                ReuseableFlatButton(
                  title: 'over 4 times a week',
                  onPress: () {
                    Navigator.pushNamed(context, FeelingsCategory.route);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
