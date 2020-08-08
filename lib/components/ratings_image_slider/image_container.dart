import 'package:flutter/material.dart';
class ImageContainer extends StatelessWidget {
  final String imagePath;
  final Function onPressed;
  ImageContainer({this.imagePath,@required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: 150.0,
      child: GestureDetector(
        onTap: onPressed,
        child: Image.asset(
          imagePath,
        ),
      ),
    );
  }
}
