import 'package:fitnesschallengeapp/screens/plan_screen.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../main.dart';

class MyHomePage extends StatefulWidget {
  static const String route='home_screen';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget>pages=[Plan(),Page2(),Page3(),Page4()];
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list,color: kBottomNavBarIconColor,),
            title: Text('Plan',style: kBottomNavBarTitleColor,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box,color: kBottomNavBarIconColor,),
            title:  Text('Challenges',style: kBottomNavBarTitleColor,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up,color: kBottomNavBarIconColor,),
            title: Text('Report',style: kBottomNavBarTitleColor,),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: kBottomNavBarIconColor,),
            title: Text('Profile',style: kBottomNavBarTitleColor,),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
