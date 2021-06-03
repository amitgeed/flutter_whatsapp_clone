import 'package:flutter/material.dart';

class DetailedChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            child: Icon(
              Icons.person,
              size: 30,
              color: Colors.white,
            ),
            radius: 30,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.call),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        title: Text('Amit'),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(bottom: 20, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                          border: Border.all(color: Colors.white38),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            // fillColor: Colors.deepPurpleAccent,
                            prefixIcon: Icon(Icons.emoji_emotions),
                          ),
                          onChanged: (value) {
                            // messageText = value;
                          },
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.send),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
