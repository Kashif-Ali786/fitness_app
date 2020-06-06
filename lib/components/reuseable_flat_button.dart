import 'package:flutter/material.dart';

import '../constants.dart';

class ReuseableFlatButton extends StatelessWidget {
  final IconData leadingIcon;
  final IconData trailingIcon;

  final String title;
  final Function onPress;
  ReuseableFlatButton(
      {@required this.title, this.leadingIcon,this.trailingIcon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 70,
        margin: EdgeInsets.symmetric(vertical: 15.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green, width: 2),
        ),
        child: FlatButton(
            onPressed: onPress,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  leadingIcon,
                  color: Colors.white, size: 30,
                ),

                Text(
                  title.toUpperCase(),
                  style: kFlatButtonTextStyle,
                ),
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(
                    trailingIcon,
                    color: Colors.white, size: 30,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
