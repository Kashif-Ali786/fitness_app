import 'file:///E:/Flutter%20Projects/fitness_challenge_app/lib/pages/plan_pages/exercise_category.dart';
import 'file:///E:/Flutter%20Projects/fitness_challenge_app/lib/pages/plan_pages/feeling_category.dart';
import 'file:///E:/Flutter%20Projects/fitness_challenge_app/lib/pages/plan_pages/know_about.dart';
import 'package:fitnesschallengeapp/pages/plan_pages/push_ups_category.dart';
import 'package:fitnesschallengeapp/pages/push_ups_category.dart';
import 'file:///E:/Flutter%20Projects/fitness_challenge_app/lib/pages/plan_pages/your_goals.dart';
import 'package:fitnesschallengeapp/screens/home_page.dart';
import 'package:fitnesschallengeapp/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '30 Days Fitness Challenge',
      theme: ThemeData.dark(),
      initialRoute: WelcomeScreen.route,
      routes: {
       MyHomePage.route:(context)=> MyHomePage(),
        YourGoals.route:(context)=>YourGoals(),
        KnowAbout.route:(context)=>KnowAbout(),
        ExerciseCategory.route:(context)=>ExerciseCategory(),
        FeelingsCategory.route:(context)=>FeelingsCategory(),
        PushUpsCategory.route:(context)=>PushUpsCategory(),
        WelcomeScreen.route:(context)=>WelcomeScreen(),
      },
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text('Page2'),),);
  }
}
class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text('Page3'),),);
  }
}
class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Center(child: Text('Page4'),),);
  }
}

