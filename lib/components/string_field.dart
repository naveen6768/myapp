import 'package:angrybaazcustomer/constants/decoration_constants.dart';
import 'package:flutter/material.dart';
class StringField extends StatelessWidget {
  final String text;
  final Function onChanged;
  final bool type;
  final TextInputType keyBoardType;

  StringField(
      {this.text,
        @required this.onChanged,
        @required this.type,
        this.keyBoardType});

  @override
  Widget build(BuildContext context) {
    return TextField(

      keyboardType: keyBoardType,
      textAlign: TextAlign.center,
      obscureText: type,
      onChanged: onChanged,
      decoration: ktextFieldDecoration.copyWith(hintText: text),
    );
  }
}
