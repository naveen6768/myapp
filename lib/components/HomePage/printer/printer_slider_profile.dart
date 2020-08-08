import 'package:flutter/material.dart';

class PrinterProfile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
PrinterProfile({this.title,this.subtitle,this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 200,
      padding: EdgeInsets.all(5.0),
      width: 160.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.asset(imagePath),
            ListTile(
              title: Text(title),
              subtitle: Text(subtitle),
            ),
          ],
        ),
      ),
    );
  }
}
