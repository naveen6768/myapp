import 'package:angrybaazcustomer/components/ratings_image_slider/image_container.dart';
import 'package:flutter/material.dart';
import 'package:angrybaazcustomer/constants/color_constants.dart';

class ReviewImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kcategoryPageBackground,
        //borderRadius: BorderRadius.circular(5.0)
      ),

      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(
            width: 10.0,
          ),
          ImageContainer(imagePath: 'images/Rectangle128.png',onPressed: (){},),
          SizedBox(
            width: 10.0,
          ),
          ImageContainer(imagePath: 'images/Rectangle128.png',onPressed: (){}),
          SizedBox(
            width: 10.0,
          ),
          ImageContainer(imagePath: 'images/Rectangle129.png',onPressed: (){}),
        ],
      ),
    );
  }
}
