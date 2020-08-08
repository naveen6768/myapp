import 'package:angrybaazcustomer/components/HomePage/Drawer/drawer_inkwell_buttons.dart';
import 'package:angrybaazcustomer/components/HomePage/Drawer/drawer_profile.dart';
import 'package:angrybaazcustomer/components/HomePage/MainCorousel.dart';
import 'package:angrybaazcustomer/components/HomePage/categories.dart';
import 'package:angrybaazcustomer/components/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:angrybaazcustomer/components/home_page_drawer/home_page_drawer.dart';

import 'file:///C:/Users/kprav/AndroidStudioProjects/angrybaaz_customer/lib/components/HomePage/printer/printer_slider.dart';
import 'package:angrybaazcustomer/constants/color_constants.dart';
import 'package:angrybaazcustomer/constants/textstyle_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/string_field.dart';

class HomePage extends StatefulWidget {
  static const id = 'HomePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'angrybaaz',
          style: kappBarTextStyle,
        ),
        backgroundColor: kthemeColor,
      ),
      drawer: HomePageDrawer(),
      bottomNavigationBar: NavigationBarBottom(),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 10.0,
            ),
            MainCorousel(
              imagePath: 'images/Rectangle129.png',
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Select the Category',
                      style: kheadingLoginSignup.copyWith(color: Colors.black),
                    ),
                    Category(),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Want to customize specifically with your favorite printer?',
                      style: kheadingLoginSignup.copyWith(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 10.0),
                      child: StringField(
                        text: 'Enter printer name',
                        onChanged: (value) {},
                        type: false,
                      ),
                    ),
                    PrinterSlider(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
