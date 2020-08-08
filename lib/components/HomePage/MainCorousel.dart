import 'package:flutter/material.dart';
import 'package:angrybaazcustomer/constants/color_constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainCorousel extends StatelessWidget {
  final String imagePath;
  MainCorousel({this.imagePath});
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: kthemeColor,
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.fill),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
