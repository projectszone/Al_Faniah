import 'package:al_faniah/auth/screens/login_as_screen.dart';
import 'package:al_faniah/main.dart';
import 'package:al_faniah/themes/colors_class.dart';
import 'package:al_faniah/themes/text_class.dart';
import 'package:al_faniah/user/bottom_navigation_screens/bottom_navigation_screens/user_edit_profile.dart';
import 'package:al_faniah/user_modules/screens/dummy.dart';
import 'package:al_faniah/user_modules/screens/vendors/vendor_reviews.dart';
import 'package:al_faniah/widgets/custom_list_tile.dart';
import 'package:al_faniah/widgets/outlined_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: mq.height * .02,
            ),
            Text('MY PROFILE', style: TextDesign.titleText,),
            SizedBox(
              height: mq.height * .035,
            ),
            Container(
              color: Pallete.backgroundColor,
              width: mq.width * 1.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: mq.height * .015,),
                  Text('Verified Customer',style: TextDesign.titleText,),
                  SizedBox(height: mq.height * .01,),
                  Text('03026859509', style: TextDesign.descriptionText,),
                  SizedBox(height: mq.height * .01,),
                  CustomOutlinedButton(
                    buttonText: 'Edit Profile', 
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (_)
                      => const UserEditScreen()));
                    }),
                    SizedBox(height: mq.height * .01,),
                    CustomListTile(
                      leading: CupertinoIcons.bubble_left_bubble_right_fill, 
                      title: 'Help Center', 
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)
                        => DummyData()));
                      }),
                      CustomListTile(
                      leading: Icons.abc_outlined, 
                      title: 'About Company', 
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)
                        => DummyData()));
                      }),
                      CustomListTile(
                      leading: CupertinoIcons.star_fill, 
                      title: 'My Rating', 
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)
                        => VendorReviewScreen()));
                      }),
                      CustomListTile(
                      leading: CupertinoIcons.hand_thumbsup_fill, 
                      title: 'Rate Us', 
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)
                        => DummyData()));
                      }),
                      CustomListTile(
                      leading: CupertinoIcons.creditcard_fill, 
                      title: 'Add Payment Method', 
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)
                        => DummyData()));
                      }),
                      CustomListTile(
                      leading: Icons.privacy_tip, 
                      title: 'Privacy Policy', 
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)
                        => DummyData()));
                      }),
                      CustomListTile(
                      leading: Icons.description, 
                      title: 'Terms and Conditions', 
                      onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)
                        => DummyData()));
                      }),
                      Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        elevation: 1,
        color: Pallete.white,
        child: ListTile(
          leading: Icon(Icons.logout, color: Pallete.red,size: 26,),
          title: Text('Logout', style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
          onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (_)
                        => LoginAsScreen()));
          },
        ),
      ),
    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

