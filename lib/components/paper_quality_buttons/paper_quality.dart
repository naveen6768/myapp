import 'package:angrybaazcustomer/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';

class PaperQualityButtons extends StatelessWidget {
  final String text;
  final Function onPressed;
  PaperQualityButtons({this.text,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Material(
        borderRadius: BorderRadius.circular(5.0),
        elevation: 8.0,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
              color: Colors.black,
              width: 1.5,
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: kheadingLoginSignup.copyWith(
                color: Colors.black, fontSize: 20.0,),
            ),
          ),
        ),
      ),
      onTap: onPressed,
    );
  }
}
