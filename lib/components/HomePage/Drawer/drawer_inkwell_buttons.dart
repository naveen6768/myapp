import 'package:flutter/material.dart';

class DrawerButtons extends StatelessWidget {
  final String buttonTitle;
  final Icon buttonIcon;
  DrawerButtons({this.buttonTitle,this.buttonIcon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        title: Text(buttonTitle),
        leading: buttonIcon,
      ),
    );
  }
}
