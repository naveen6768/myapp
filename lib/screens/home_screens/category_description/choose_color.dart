import 'package:angrybaazcustomer/components/back_arrow.dart';
import 'package:angrybaazcustomer/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:angrybaazcustomer/components/color_cards_designpage/cards.dart';
import 'package:angrybaazcustomer/constants/color_constants.dart';
import 'package:angrybaazcustomer/constants/textstyle_constants.dart';
import 'package:angrybaazcustomer/screens/home_screens/category_customization_screen/editing_screen.dart';

import 'package:flutter/material.dart';

class ChooseColor extends StatelessWidget {
  static const id = 'ChooseColor';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar:NavigationBarBottom(),
      appBar: AppBar(
        leading: BackArrow(),
        title: const Text(
          'Start Designing',
          style: kappBarTextStyle,
        ),
        backgroundColor: kthemeColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Card(
                  color: Colors.lightBlue,
                  child: ListTile(
                    leading: Icon(
                      Icons.file_upload,
                      color: Colors.white,
                    ),
                    title: const Text(
                      'Upload',
                      style: const TextStyle(
                          fontFamily: 'Montserrat Alternates',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    trailing: Icon(
                      Icons.filter,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ColorCards(
                  imagePath: 'images/images3.png',
                  text: 'Standard',
                  onPressed1: () {
                    Navigator.pushNamed(context, EditingScreen.id);
                  },
                  colour1: Colors.green,
                  colour2: Colors.redAccent,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ColorCards(
                  imagePath: 'images/images3.png',
                  text: 'Standard',
                  onPressed1: () {
                    Navigator.pushNamed(context, EditingScreen.id);
                  },
                  colour1: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
