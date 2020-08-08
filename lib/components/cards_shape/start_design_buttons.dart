import 'package:flutter/material.dart';
import 'package:angrybaazcustomer/constants/textstyle_constants.dart';
import 'package:angrybaazcustomer/constants/color_constants.dart';


class StartDesignButton extends StatelessWidget {
  final Color colour;
  final Function onPressed;
  final String child;
  StartDesignButton({this.colour,this.onPressed,this.child});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 8.0,
        child: Container(
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: kcategoryPageBackground,
            borderRadius: BorderRadius.circular(30.0),
            border: Border.all(
              color: colour,
              width: 1.5,
            ),
          ),
          child: Text(
            child,
            style: kheadingLoginSignup.copyWith(
                color: Colors.black, fontSize: 15.0),
          ),
        ),
      ),
      onTap:onPressed ,
    );
  }
}
