import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syoop/src/config/kdecoration.dart';
import 'package:syoop/src/config/ktext.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = Get.size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.10,
            ),
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: HexColor('#0025A8'),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: KText(
                    text: 'SYOOP',
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            KText(
              text: 'Syoop',
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            TextField(
              decoration: kInputDecoration(hintText: 'First name'),
            ),
            TextField(
              decoration: kInputDecoration(hintText: 'Last name'),
            ),
            SizedBox(
              height: size.height * 0.27,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Icon(
                Icons.verified_user_outlined,
                size: 15,
                color: HexColor('#0025A8'),
              ),
              Container(
                child: RichText(
                  text: TextSpan(
                    text: "Agree to our ",
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                        text: "Terms of service ",
                        style: TextStyle(
                          color: HexColor('#0025A8'),
                        ),
                      ),
                      TextSpan(
                        text: "and ",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "privacy policy",
                        style: TextStyle(
                          color: HexColor('#0025A8'),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
