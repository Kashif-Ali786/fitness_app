import 'package:fitnesschallengeapp/constants.dart';
import 'package:fitnesschallengeapp/pages/plan_pages/push_ups_category.dart';
import 'package:flutter/material.dart';
import 'package:fitnesschallengeapp/components/reuseable_background_widget.dart';
import 'package:fitnesschallengeapp/components/reuseable_flat_button.dart';
import 'package:fitnesschallengeapp/components/reuseable_plan_page.dart';

class FeelingsCategory extends StatelessWidget {
  static const String route = 'feelings_category';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReuseableBackgroundWidget(
          backgroundImageUrl: kBackgroundImageUrl,
          pageChild: ReuseablePlanPage(
            heading: 'How to do you feel after climbing 5 floors?',
            pageChidren: Column(
              children: <Widget>[
                ReuseableFlatButton(
                  title: 'Shortness of breath',
                  onPress: () {
                    Navigator.pushNamed(context, PushUpsCategory.route);
                  },
                ),
                ReuseableFlatButton(
                  title: 'A little tired',
                  onPress: () {
                    Navigator.pushNamed(context, PushUpsCategory.route);
                  },
                ),
                ReuseableFlatButton(
                  title: 'easy',
                  onPress: () {
                    Navigator.pushNamed(context, PushUpsCategory.route);
                  },
                ),
                ReuseableFlatButton(
                  title: 'i can ran up there',
                  onPress: () {
                    Navigator.pushNamed(context, PushUpsCategory.route);
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
