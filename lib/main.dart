import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syoop/src/app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(App());
}
