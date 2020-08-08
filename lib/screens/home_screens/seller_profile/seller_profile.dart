import 'package:angrybaazcustomer/components/HomePage/categories.dart';
import 'package:angrybaazcustomer/components/back_arrow.dart';
import 'package:angrybaazcustomer/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:angrybaazcustomer/components/delivery_dropdown/delivery_dropdown.dart';
import 'package:angrybaazcustomer/components/ratings_divider/ratings_divider.dart';
import 'package:angrybaazcustomer/components/ratings_image_slider/ratings_images_slider.dart';
import 'package:angrybaazcustomer/components/review_text/review_text.dart';
import 'package:angrybaazcustomer/components/theme_button.dart';
import 'package:angrybaazcustomer/constants/color_constants.dart';

import 'package:angrybaazcustomer/constants/textstyle_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SellerProfile extends StatelessWidget {
  static const id = 'SellerProfile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:NavigationBarBottom(),
      appBar: AppBar(
        elevation: 5.0,
        backgroundColor: kthemeColor,
        centerTitle: true,
        leading: BackArrow(),
        title: Text(
          'OutFlank Printers',
          style: kappBarTextStyle,
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: kcategoryPageBackground,
                    image: DecorationImage(
                      image:const AssetImage('images/images1.png'),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: double.infinity,
                ),
                const  SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      'Amount to be paid - 2000.0Rs.',
                      style:const TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
                const  SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    const  Text(
                      'Quantity - 500',
                      style:const  TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
                const  SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: DeliveryDropdown(),
                ),
               const  SizedBox(
                  height: 10.0,
                ),
                 Center(
                  child: ThemeButton(
                    text: 'Place Order',
                    onPressed: () {},
                  ),
                ),
               const SizedBox(
                  height: 20.0,
                ),
                const  Text(
                  'Want to customize specifically with Outflank Printers?',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                 Category(),
                const  SizedBox(
                  height: 20.0,
                ),
                const  Text(
                  'Ratings -',
                  style: TextStyle(fontSize: 20.0),
                ),
                const  SizedBox(
                  height: 20.0,
                ),
                RatingsDivider(
                  height: 4.0,
                  colour: Colors.green,
                ),
                const  SizedBox(
                  height: 20.0,
                ),
                const   Text(
                  'Reviews -',
                  style: TextStyle(fontSize: 20.0),
                ),
                const  SizedBox(
                  height: 20.0,
                ),
                 ReviewImages(),
                const  SizedBox(
                  height: 20.0,
                ),
                ReviewText(
                  customerName: 'Pravin Kumar',
                  customerReview: '"this is great experience"',
                ),
                const  SizedBox(
                  height: 10.0,
                ),
                  ReviewText(
                  customerName: 'Pravin Kumar',
                  customerReview: '"this is great experience"',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
