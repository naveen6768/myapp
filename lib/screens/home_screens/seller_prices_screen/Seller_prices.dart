import 'package:angrybaazcustomer/components/back_arrow.dart';
import 'package:angrybaazcustomer/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:angrybaazcustomer/components/seller_prices_cards.dart';
import 'package:angrybaazcustomer/constants/color_constants.dart';
import 'package:angrybaazcustomer/constants/textstyle_constants.dart';
import 'package:angrybaazcustomer/screens/home_screens/seller_profile/seller_profile.dart';

import 'package:flutter/material.dart';

class SellerPrices extends StatelessWidget {
  static const id = 'SellerPrices';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:NavigationBarBottom(),
      backgroundColor: kcategoryPageBackground,
      appBar: AppBar(
        elevation: 5.0,
        backgroundColor: kthemeColor,
        centerTitle: true,
        leading: BackArrow(),
        title: Text(
          'Seller Prices',
          style: kappBarTextStyle,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SellerPricesCards(
                  onPressed: () {
                    Navigator.pushNamed(context, SellerProfile.id);
                  }, printerNameTitle: 'OutFlank Printers', imagePath: 'images/images3.png',printerLocationSubtitle: 'New Delhi',prices: 2000.0,
                ),
//                SizedBox(
//                  height: 8.0,
//                ),
//                SellerPricesCards(),
//                SizedBox(
//                  height: 8.0,
//                ),
//                SellerPricesCards(),
//                SizedBox(
//                  height: 8.0,
//                ),
//                SellerPricesCards(),
//                SizedBox(
//                  height: 8.0,
//                ),
//                SellerPricesCards(),
//                SizedBox(
//                  height: 8.0,
//                ),
//                SellerPricesCards(),
//                SizedBox(
//                  height: 8.0,
//                ),
//                SellerPricesCards(),
//                SizedBox(
//                  height: 8.0,
//                ),
//                SellerPricesCards(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
