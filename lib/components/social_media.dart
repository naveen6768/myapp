import 'package:angrybaazcustomer/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';
class SocialMedia extends StatelessWidget {
  final String text;
  //final double width;
  final Color colour;
  final Function onPressed;
  SocialMedia({this.text, this.colour,@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child: Container(
        //color: Colors.white,
        height: 45,
       // width: width * 0.8,
        child: Center(
          child: Text(
            text,
            style:ksocialMediaButtons,
          ),
        ),
      ),
      color: colour,
    );
  }
}

