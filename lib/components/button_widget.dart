import 'package:flutter/material.dart';
import 'package:flutter_chat_app/constants/colors.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonTitle;
  final Function onTapped;
  ButtonWidget({this.buttonTitle, this.onTapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: cPrimaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: FlatButton(
        onPressed: onTapped,
        child: Text(
          buttonTitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
