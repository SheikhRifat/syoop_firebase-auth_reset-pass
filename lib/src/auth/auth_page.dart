import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syoop/src/auth/login_page.dart';
import 'package:syoop/src/auth/signup_auth.dart';
import 'package:syoop/src/config/ktext.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = Get.size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(children: [
            SizedBox(
              height: size.height * 0.2,
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
              height: size.height * 0.07,
            ),
            InkWell(
              onTap: () {
                Get.to(LoginPage());
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: HexColor('#0025A8'),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: KText(
                    text: 'Log in',
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            InkWell(
              onTap: () {
                Get.to(SignupAuth());
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: HexColor('#D6DBF1'), width: 1),
                ),
                child: Center(
                  child: KText(
                    text: 'Sign Up',
                    color: HexColor('#0025A8'),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
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
          ]),
        ));
  }
}
