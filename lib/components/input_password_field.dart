import 'package:flutter/material.dart';

class PasswordInputField extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final TextEditingController controller;
  PasswordInputField({this.icon, this.labelText,this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade100,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: true,
        cursorColor: Colors.deepPurpleAccent,
        decoration: InputDecoration(
          labelText: labelText,
          border: InputBorder.none,
          fillColor: Colors.deepPurpleAccent,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
