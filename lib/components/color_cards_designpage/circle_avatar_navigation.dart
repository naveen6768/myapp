import 'package:flutter/material.dart';

class CardsAvatar extends StatelessWidget {
  final Function onPressed;
  final Color colour;
  CardsAvatar({this.colour,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPressed,
      child: CircleAvatar(
        backgroundColor: colour,
        radius: 20.0,
      ),
    );
  }
}
