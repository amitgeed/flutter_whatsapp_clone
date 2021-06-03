import 'package:flutter/material.dart';
import 'package:flutter_chat_app/components/button_widget.dart';
import 'package:flutter_chat_app/components/input_password_field.dart';
import 'package:flutter_chat_app/components/input_text_field.dart';
import 'package:flutter_chat_app/view/Home/home_screen.dart';
import 'package:flutter_chat_app/view/Login/login_screen.dart';

class SignupScreen extends StatelessWidget {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * .10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      letterSpacing: 3.0,
                      color: Colors.deepPurpleAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                // Image.asset("assets/icons/customer.png",
                //     height: MediaQuery.of(context).size.height * 0.20),
                InputTextField(
                  icon: Icons.person,
                  labelText: 'Enter Your Full Name',
                  controller: userNameController,
                ),
                InputTextField(
                  icon: Icons.email_outlined,
                  labelText: 'Enter Your Email',
                  controller: emailController,
                ),
                PasswordInputField(
                  icon: Icons.vpn_key,
                  labelText: 'Enter Your Password',
                  controller: passwordController,
                ),
                ButtonWidget(
                  onTapped: () {
                    Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                  },
                  buttonTitle: 'SignUp',
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an Account ?'),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        ' Login Here!',
                        style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
