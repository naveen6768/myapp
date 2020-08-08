import 'package:flutter/material.dart';
class RatingsDivider extends StatelessWidget {
  final double height;
  final Color colour;
  RatingsDivider({this.height,this.colour});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: Divider(
        thickness: 4.0,
        color: colour,
        height: height,
      ),
    );
  }
}
