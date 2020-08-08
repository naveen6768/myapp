import 'package:angrybaazcustomer/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';

class RecommendedButton extends StatefulWidget {
  @override
  _RecommendedButtonState createState() => _RecommendedButtonState();
}

class _RecommendedButtonState extends State<RecommendedButton> {
  @override
  Widget build(BuildContext context) {
    return  Material(
      borderRadius: BorderRadius.circular(5.0),
      elevation: 8.0,
      child: Container(
        width: double.infinity,
        height: 30.0,
        // padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Color(0xff24BA17),
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            color: Colors.white,
            width: 1.0,
          ),
        ),
        child: Center(
          child: Text(
            'Recommended',
            style: kheadingLoginSignup.copyWith(
                color: Colors.white, fontSize: 15.0),
          ),
        ),
      ),
    );
  }
}
