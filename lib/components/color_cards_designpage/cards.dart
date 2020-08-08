import 'package:angrybaazcustomer/components/color_cards_designpage/circle_avatar_navigation.dart';
import 'package:angrybaazcustomer/constants/color_constants.dart';
import 'package:angrybaazcustomer/constants/textstyle_constants.dart';

import 'package:flutter/material.dart';

class ColorCards extends StatelessWidget {
  final Function onPressed1;
  final Function onPressed2;
  final Function onPressed3;
  final Function onPressed4;
  final Function onPressed5;
  final String text;
  final String imagePath;
  final Color colour1;
  final Color colour2;
  final Color colour3;
  final Color colour4;
  final Color colour5;

  ColorCards(
      {this.onPressed1,
      this.onPressed2,
      this.onPressed3,
      this.onPressed4,
      this.onPressed5,
      this.text,
      this.imagePath,
      this.colour1,
      this.colour2,
      this.colour3,
      this.colour4,
      this.colour5});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kcategoryPageBackground,
      child: Wrap(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 250.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover)),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(20.0),
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                text,
                style: kheadingLoginSignup.copyWith(color: Colors.black),
              ),
            ),
            subtitle: Row(
              children: <Widget>[
                CardsAvatar(
                  colour: colour1,
                  onPressed: onPressed1,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                CardsAvatar(
                  colour: colour2,
                  onPressed: onPressed2,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                CardsAvatar(
                  colour: colour3,
                  onPressed: onPressed3,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                CardsAvatar(
                  colour: colour4,
                  onPressed: onPressed4,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                CardsAvatar(
                  colour: colour5,
                  onPressed: onPressed5,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
