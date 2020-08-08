import 'package:angrybaazcustomer/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';

class CardVariants extends StatelessWidget {
  final Function onPressed;
  final double width;
  final String title;
  final String imagePath;

  CardVariants({this.onPressed, this.width, this.title, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        child: Card(
          child: Wrap(
            children: <Widget>[
              Image.asset(imagePath),
              ListTile(
                title: Text(
                  title,
                  style: kheadingLoginSignup.copyWith(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
