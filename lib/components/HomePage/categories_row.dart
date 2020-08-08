import 'package:flutter/material.dart';
import 'categories_column.dart';
class Categories extends StatelessWidget {
  final Function onPressed1;
  final String imagePath1;
  final String title1;
  final String imagePath2;
  final String title2;
  final String imagePath3;
  final String title3;

  Categories(
      {this.onPressed1,this.imagePath1,
      this.title1,
      this.imagePath2,
      this.title2,
      this.imagePath3,
      this.title3});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        CategoriesColumn(
          imagePath: imagePath1,
          title: title1,
          onTap: onPressed1,
        ),
        SizedBox(
          width: 5.0,
        ),
        CategoriesColumn(
          imagePath: imagePath2,
          title: title2,
        ),
        SizedBox(
          width: 5.0,
        ),
        CategoriesColumn(
          imagePath: imagePath3,
          title: title3,
        ),
      ],
    );
  }
}
