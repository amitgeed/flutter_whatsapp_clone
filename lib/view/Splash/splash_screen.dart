import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_chat_app/view/TermsandConditions/termsandconditions_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => TnCScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.width * 0.6,
                  top: MediaQuery.of(context).size.width * 0.6),
              child: Image.asset(
                'assets/whatsapp.png',
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.width * 0.2,
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.5),
              child: Text(
                'from\nFACEBOOK',
                textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 1.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
