import 'package:flutter/material.dart';
import 'package:flutter_chat_app/view/Home/home_screen.dart';

class OtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * .07),
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  'Verify  +91 9012345678',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Waiting to automatically detect an SMS sent to +91 9012345678. Wrong number?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.0),
                child: TextFormField(
                  onEditingComplete: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  decoration: InputDecoration(
                    hintText: '-    -    -      -    -    -',
                  ),
                  keyboardType: TextInputType.phone,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 20),
                child: Text('Enter 6-digit otp'),
              ),
              Row(
                children: [
                  Icon(Icons.sms),
                  SizedBox(width: 20),
                  Text('Resend SMS'),
                  Spacer(),
                  Text('02:00'),
                ],
              ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                children: [
                  Icon(Icons.call),
                  SizedBox(width: 20),
                  Text('Call me'),
                  Spacer(),
                  Text('02:00'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
