import 'package:al_faniah/auth/screens/login_as_screen.dart';
import 'package:al_faniah/intro_screens/onboard_screens.dart';
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
      home: const OnBoardScreens(),
    );
  }
}
