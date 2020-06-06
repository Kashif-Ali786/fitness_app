import 'package:fitnesschallengeapp/components/reuseable_background_widget.dart';
import 'package:fitnesschallengeapp/components/reuseable_flat_button.dart';
import 'package:fitnesschallengeapp/components/reuseable_plan_page.dart';
import 'package:fitnesschallengeapp/constants.dart';
import 'package:flutter/material.dart';
import 'know_about.dart';

class YourGoals extends StatelessWidget {
  static const String route = 'your_goals';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReuseableBackgroundWidget(
          backgroundImageUrl: kBackgroundImageUrl,
          pageChild: ReuseablePlanPage(
            heading: 'What\'s Your Goals?',
            subHeading: 'Achieve your goals with your personalized plan',
            pageChidren: Column(
              children: <Widget>[
                ReuseableFlatButton(
                  leadingIcon: Icons.star,
                  title: 'Lose Weight',
                  onPress: () {
                    Navigator.pushNamed(context, KnowAbout.route);
                  },
                ),
                ReuseableFlatButton(
                  leadingIcon: Icons.pages,
                  title: 'Get Toned',
                  onPress: () {
                    Navigator.pushNamed(context, KnowAbout.route);
                  },
                ),
                ReuseableFlatButton(
                  leadingIcon: Icons.airline_seat_legroom_extra,
                  title: 'Build Muscle',
                  onPress: () {
                    Navigator.pushNamed(context, KnowAbout.route);
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
