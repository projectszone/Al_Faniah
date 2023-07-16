import 'package:al_faniah/auth/screens/login_as_screen.dart';
import 'package:al_faniah/main.dart';
import 'package:al_faniah/themes/text_class.dart';
import 'package:al_faniah/user/bottom_navigation_screens/bottom_navigation_screens/user_home_screen.dart';
import 'package:al_faniah/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OrderCompleteScreen extends StatelessWidget {
  const OrderCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Image(image: AssetImage('assets/images/success.png'))),
          SizedBox(height:  mq.height * .05,),
          Text('         Thanks for hiring  \nYour Order has been Placed.', style: TextDesign.titleText,)
          ,
          SizedBox(height:  mq.height * .05,),
          CustomButtonContainer(
            onTap: (){
              Navigator.pushReplacement(context, 
              MaterialPageRoute(builder: (_) =>
              const UserHomeScreen()));
            }, 
            text: 'GO TO DASHBOARD',
            ),  
        ],
      ),
    );
  }
}