import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../main.dart';
import '../../widgets/login_signup_button.dart';
import '../../user/bottom_navigation_screens/bottom_navigation_screen.dart';

class LoginWithGoogle extends StatelessWidget {
  const LoginWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: mq.height * 0.6,
          ),
          Center(
            child: CustomLoginSignUpButton(
              path: Constants.googlePath,
              buttonText: 'Login',
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const UserBottomNavigationScreen())),
            ),
          )
        ],
      ),
    );
  }
}
