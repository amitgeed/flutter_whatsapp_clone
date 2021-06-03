import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 5),
              // height: 100,
              color: Colors.black,
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search Here....',
                    icon: Padding(
                      padding: EdgeInsets.symmetric(horizontal:8.0),
                      child: InkWell(
                        onTap:() => Navigator.pop(context),
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(),
            ),
          ],
        ),
      ),
    );
  }
}
