import 'package:fitnesschallengeapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:fitnesschallengeapp/components/reuseable_background_widget.dart';
import 'package:fitnesschallengeapp/components/reuseable_flat_button.dart';
import 'package:fitnesschallengeapp/components/reuseable_plan_page.dart';

class PushUpsCategory extends StatelessWidget {
  static const String route = 'pushups_category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReuseableBackgroundWidget(
          backgroundImageUrl: kBackgroundImageUrl,
          pageChild: ReuseablePlanPage(
            heading: 'how many knee push ups can you do at a time?',
            pageChidren: Column(
              children: <Widget>[
                ReuseableFlatButton(
                  title: 'less than 10',
                  onPress: () {
                    //              Navigator.pushNamed(context,);
                  },
                ),
                ReuseableFlatButton(
                  title: '10-20',
                  onPress: () {},
                ),
                ReuseableFlatButton(
                  title: '21-30',
                  onPress: () {},
                ),
                ReuseableFlatButton(
                  title: 'over 30',
                  onPress: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
