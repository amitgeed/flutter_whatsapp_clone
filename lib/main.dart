import 'package:flutter/material.dart';
import 'package:flutter_chat_app/view/Splash/splash_screen.dart';

import 'constants/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: cPrimaryColor,
        accentColor: cPrimaryAccentColor,
      ),
      home: SplashScreen(),
    );
  }
}
