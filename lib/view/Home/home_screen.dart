import 'package:flutter/material.dart';
import 'package:flutter_chat_app/view/Calls/calls_screen.dart';
import 'package:flutter_chat_app/view/Camera/camera_screen.dart';
import 'package:flutter_chat_app/view/Chat/chat_screen.dart';
import 'package:flutter_chat_app/view/Contacts/contacts_screen.dart';
import 'package:flutter_chat_app/view/Status/status_screen.dart';

import 'components/my_appbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController;
  int currentPageIndex = 1;

  List<Widget> pages = [
    CameraScreen(),
    ChatScreen(),
    StatusScreen(),
    CallsScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green[900],
      body: Column(
        children: <Widget>[
          currentPageIndex == 0
              ? Container()
              : MyAppBar(
                  currentPageIndex: currentPageIndex,
                ),
          Expanded(
            flex: 6,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  currentPageIndex = index;
                  print(currentPageIndex);
                });
              },
              itemCount: 4,
              itemBuilder: (context, index) {
                return pages[index];
              },
            ),
          ),
          // Expanded(child: Text("Test"), flex: 10),
        ],
      ),
      floatingActionButton: FabIconWidget(currentPageIndex),
    );
  }
}

class FabIconWidget extends StatelessWidget {
  final index;
  FabIconWidget(this.index);

  @override
  Widget build(BuildContext context) {
    if (index == 1) {
      return FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ContactsScreen(),
            ),
          );
        },
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      );
    } else if (index == 2) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.grey,
            onPressed: () {},
            child: Icon(
              Icons.create,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CameraScreen(),
                ),
              );
            },
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
        ],
      );
    } else if (index == 3) {
      return FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ContactsScreen(),
            ),
          );
        },
        child: Icon(
          Icons.add_call,
          color: Colors.white,
        ),
      );
    } else {
      return Container();
    }
  }
}
