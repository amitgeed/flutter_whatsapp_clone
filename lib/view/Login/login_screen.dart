import 'package:flutter/material.dart';
import 'package:flutter_chat_app/constants/colors.dart';
import 'package:flutter_chat_app/view/Otp/otp_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * .12),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Text(
                        'Enter your Phone number',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 10),
                      child: Text(
                        'WhatsApp will send an SMS message to verify your phone numer. What\'s my phone number ?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 100),
                      child: DropdownButton(
                        hint: Text('India'),
                        isExpanded: true,
                        items: [
                          DropdownMenuItem(
                            child: Center(child: Text('India')),
                          ),
                          DropdownMenuItem(
                            child: Center(child: Text('US')),
                          ),
                          DropdownMenuItem(
                            child: Center(child: Text('Canada')),
                          ),
                          DropdownMenuItem(
                            child: Center(child: Text('Bangladesh')),
                          ),
                          DropdownMenuItem(
                            child: Center(child: Text('Africa')),
                          ),
                        ],
                        onChanged: (country) {},
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        prefix: Text('+ 91'),
                      ),
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              FlatButton(
                color: cPrimaryColor,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                },
                child: Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
