import 'package:al_faniah/onBoard_Screens/onBoard_Screens.dart';
import 'package:al_faniah/auth/screens/login_as_screen.dart';
import 'package:al_faniah/auth/screens/login_with_google.dart';
import 'package:al_faniah/auth/screens/user_login_screen.dart';
import 'package:al_faniah/user/bottom_navigation_screens/bottom_navigation_screen.dart';
import 'package:al_faniah/user/bottom_navigation_screens/features/auto_page_change.dart';
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
      home: const LoginAsScreen(),
    );
  }
}
