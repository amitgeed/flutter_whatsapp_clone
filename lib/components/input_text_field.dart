import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String labelText;
  final IconData icon;
  final String inputType;
  final TextEditingController controller;
  InputTextField({this.icon, this.labelText, this.controller,this.inputType});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        border: Border.all(color: Colors.white38),
      ),
      child: TextFormField(
        controller: controller,
        cursorColor: Colors.deepPurpleAccent,
        keyboardType: inputType == "text" ? TextInputType.text : TextInputType.phone,
        decoration: InputDecoration(
          labelText: labelText,
          border: InputBorder.none,
          // fillColor: Colors.deepPurpleAccent,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
