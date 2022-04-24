import 'package:flutter/material.dart';

InputDecoration kInputDecoration({required String hintText}) {
  return InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 18.0),
    hintStyle: TextStyle(color: Colors.black, fontSize: 18),
    hintText: hintText,
    filled: false,
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 1),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.orange),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: Colors.orange),
    ),
    errorStyle: TextStyle(color: Colors.grey),
  );
}
