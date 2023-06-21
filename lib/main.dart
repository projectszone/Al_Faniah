import 'package:al_faniah/onBoard_Screens/onBoard_Screens.dart';
import 'package:al_faniah/user_modules/auth/screens/user_login_screen.dart';
import 'package:al_faniah/user_modules/bottom_navigation_screens/bottom_navigation_screen.dart';
import 'package:flutter/material.dart';

late Size mq;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Al Faniah',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const UserBottomNavigationScreen(),
       );
  }
}
