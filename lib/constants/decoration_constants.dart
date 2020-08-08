import 'package:flutter/material.dart';

const InputDecoration ktextFieldDecoration = InputDecoration(
  fillColor: Color(0xffF0F0F0),
  filled: true,
  hintText: '',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white30, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black45, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);
