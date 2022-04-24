import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syoop/src/auth/auth_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
    );
  }
}
