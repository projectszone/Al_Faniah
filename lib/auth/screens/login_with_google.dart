import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../main.dart';
import '../../user/bottom_navigation_screens/bottom_navigation_screen.dart';
import '../../vendor/screens/vendor_home_screen.dart';
import '../../widgets/login_signup_button.dart';

class LoginWithGoogle extends StatefulWidget {
  final String type;
  const LoginWithGoogle({super.key, required this.type});

  @override
  State<LoginWithGoogle> createState() => _LoginWithGoogleState();
}

class _LoginWithGoogleState extends State<LoginWithGoogle> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    final isUser = widget.type == 'user';
    final isVendor = widget.type == 'vendor';
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
                onTap: () {
                  print(widget.type);
                  if (isUser) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const UserBottomNavigationScreen()));
                  } else {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VendorHomeScreen()));
                  }
                }),
          )
        ],
      ),
    );
  }
}
