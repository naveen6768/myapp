import 'package:flutter/material.dart';
import 'package:angrybaazcustomer/constants/textstyle_constants.dart';
import 'package:angrybaazcustomer/constants/color_constants.dart';

class ThemeButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  ThemeButton({this.text, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          text,
          style: kthemeButtonStyle,
        ),
      ),
      onPressed: onPressed,
      elevation: 5.0,
      color: kthemeColor,
    );
  }
}
