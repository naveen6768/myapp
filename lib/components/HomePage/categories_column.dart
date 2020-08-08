import 'package:flutter/material.dart';


class CategoriesColumn extends StatelessWidget {
  final String imagePath;
  final  String title;
  final Function onTap;
  CategoriesColumn({this.imagePath,this.title,this.onTap});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        GestureDetector(child: Image.asset(imagePath),onTap: onTap
        ,),
        SizedBox(
          height:10.0,
        ),
        Text(title),
      ],
    );
  }
}
