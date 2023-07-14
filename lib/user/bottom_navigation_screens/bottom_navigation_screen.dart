import 'package:al_faniah/constants/constants.dart';
import 'package:al_faniah/themes/colors_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserBottomNavigationScreen extends StatefulWidget {
  const UserBottomNavigationScreen({super.key});

  @override
  State<UserBottomNavigationScreen> createState() => _UserBottomNavigationScreenState();
}

class _UserBottomNavigationScreenState extends State<UserBottomNavigationScreen> {
  int _page = 0;
  void onPageChanged(int page){
    setState(() {
      _page = page;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
        activeColor: Pallete.blue,
      
        inactiveColor: Pallete.grey,
        backgroundColor: Pallete.white,
        iconSize: 26,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
            ),
            BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_list),
            label: 'Booking',
            ),
            BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_2_fill),
            label: 'Message',
            ),
            BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled),
            label: 'Profile',
            ),
        ],
        currentIndex: _page,
        onTap: onPageChanged,
        ),
        body: Constants.tabWidgets[_page],
    );
  }
}