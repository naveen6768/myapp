import 'file:///C:/Users/kprav/AndroidStudioProjects/angrybaaz_customer/lib/components/HomePage/printer/printer_slider_profile.dart';
import 'package:flutter/material.dart';
import 'package:angrybaazcustomer/constants/color_constants.dart';

class PrinterSlider extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      height: 200,
      decoration: BoxDecoration(
        color: kcategoryPageBackground,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          PrinterProfile(imagePath: 'images/Rectangle128.png',title: 'Outflank Printers',subtitle: 'New Delhi',),
          PrinterProfile(imagePath: 'images/Rectangle128.png',title: 'Outflank Printers',subtitle: 'New Delhi',),
          PrinterProfile(imagePath: 'images/Rectangle128.png',title: 'Outflank Printers',subtitle: 'New Delhi',),
        ],
      ),
    );
  }
}
