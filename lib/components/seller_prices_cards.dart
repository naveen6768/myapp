import 'package:angrybaazcustomer/screens/home_screens/seller_profile/seller_profile.dart';
import 'package:flutter/material.dart';

class SellerPricesCards extends StatelessWidget {
  final String imagePath;
  final String printerNameTitle;
  final String printerLocationSubtitle;
  final double prices;
  final Function onPressed;
  SellerPricesCards({this.imagePath,this.printerLocationSubtitle,this.printerNameTitle,this.prices,this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: onPressed,
          leading: Image.asset(imagePath),
          title: Text(printerNameTitle),
          subtitle: Text(printerLocationSubtitle),
          trailing: Container(
            padding: EdgeInsets.all(8.0),
            height: 40.0,
            width: 80.0,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(
                5.0,
              ),
            ),
            child: Text(
              prices.toString(),
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
