import 'package:flutter/material.dart';
import 'package:flutter_chat_app/view/Login/login_screen.dart';

class TnCScreen extends StatefulWidget {
  @override
  _TnCScreenState createState() => _TnCScreenState();
}

class _TnCScreenState extends State<TnCScreen> {
  bool agree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'Welcome to WhatsApp',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 100),
              child: Image.asset(
                'assets/tnc.png',
                height: MediaQuery.of(context).size.width * 0.6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Text(
                'Read our Privacy Policy. Tap AGREE AND CONTINUE to accept the Terms and Conditions',
                textAlign: TextAlign.center,
              ),
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
              color: Color(0xfff075E54),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              child: Text('AGREE AND CONTINUE'),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.2),
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
