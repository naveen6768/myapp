import 'package:flutter/material.dart';

class DrawerProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text('Pravin Kumar'),
      accountEmail: Text('kpravin627@gmail.com'),
      currentAccountPicture: GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          child: Icon(
            Icons.person,
            size: 40.0,
            color: Color(0xff45016F),
          ),
          backgroundColor: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        color: Color(0xff45016F),
      ),
    );
  }
}
