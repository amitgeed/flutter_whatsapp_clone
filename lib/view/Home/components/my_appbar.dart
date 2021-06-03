import 'package:flutter/material.dart';
import 'package:flutter_chat_app/constants/colors.dart';
import 'package:flutter_chat_app/view/Search/search_screen.dart';
import 'package:flutter_chat_app/view/Settings/settings_screen.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,
    @required this.currentPageIndex,
  }) : super(key: key);

  final int currentPageIndex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: cPrimaryColor,
          boxShadow: [
            BoxShadow(),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.033,
                left: MediaQuery.of(context).size.height * 0.02,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'WhatsApp',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchScreen(),
                              ),
                            );
                          },
                          child: Icon(Icons.search),
                        ),
                        SizedBox(width: 10),
                        PopupMenuButton(
                          itemBuilder: (context) => [
                            PopupMenuItem(
                              value: 1,
                              child: Text("New group"),
                            ),
                            PopupMenuItem(
                              value: 2,
                              child: Text("New broadcast"),
                            ),
                            PopupMenuItem(
                              value: 3,
                              child: Text("WhatsApp Web"),
                            ),
                            PopupMenuItem(
                              value: 4,
                              child: Text("Starred Messages"),
                            ),
                            PopupMenuItem(
                              value: 5,
                              child: Text("Settings"),
                            ),
                          ],
                          onSelected: (value) {
                            if (value == 1) {
                            } else if (value == 2) {
                            } else if (value == 3) {
                            } else if (value == 4) {
                            } else if (value == 5) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SettingsScreen(),
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 8,
                  decoration: BoxDecoration(
                    border: currentPageIndex == 0
                        ? Border(
                            bottom: BorderSide(width: 3.0, color: Colors.white),
                          )
                        : Border.all(width: 0, color: Colors.transparent),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(Icons.camera_alt),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3.5,
                  decoration: BoxDecoration(
                    border: currentPageIndex == 1
                        ? Border(
                            bottom: BorderSide(width: 3.0, color: Colors.white),
                          )
                        : Border.all(width: 0, color: Colors.transparent),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'CHATS',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3.5,
                  decoration: BoxDecoration(
                    border: currentPageIndex == 2
                        ? Border(
                            bottom: BorderSide(width: 3.0, color: Colors.white),
                          )
                        : Border.all(width: 0, color: Colors.transparent),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'STATUS',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3.5,
                  decoration: BoxDecoration(
                    border: currentPageIndex == 3
                        ? Border(
                            bottom: BorderSide(width: 3.0, color: Colors.white),
                          )
                        : Border.all(width: 0, color: Colors.transparent),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'CALLS',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
