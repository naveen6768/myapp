import 'package:angrybaazcustomer/components/HomePage/Drawer/drawer_inkwell_buttons.dart';
import 'package:angrybaazcustomer/components/HomePage/Drawer/drawer_profile.dart';
import 'package:flutter/material.dart';

class HomePageDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerProfile(),
          DrawerButtons(buttonTitle: 'Home Page',buttonIcon: Icon(Icons.home),),
          DrawerButtons(buttonTitle: 'About us',buttonIcon: Icon(Icons.assignment),),
          DrawerButtons(buttonTitle: 'Feedback',buttonIcon: Icon(Icons.feedback),),
          DrawerButtons(buttonTitle: 'Angrybaaz business',buttonIcon: Icon(Icons.add_to_home_screen),),
          DrawerButtons(buttonTitle: 'Contact us',buttonIcon: Icon(Icons.phone),),
          DrawerButtons(buttonTitle: 'Logout',buttonIcon: Icon(Icons.backspace),),
        ],
      ),
    );
  }
}
