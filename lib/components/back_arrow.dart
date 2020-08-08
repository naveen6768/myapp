import 'package:flutter/material.dart';

class BackArrow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      child: Icon(Icons.keyboard_backspace),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
