import 'package:al_faniah/main.dart';
import 'package:al_faniah/themes/colors_class.dart';
import 'package:al_faniah/themes/text_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class UserMessageScreen extends StatefulWidget {
  const UserMessageScreen({super.key});

  @override
  State<UserMessageScreen> createState() => _UserMessageScreenState();
}

class _UserMessageScreenState extends State<UserMessageScreen> {
  @override
  Widget build(BuildContext context) {
   mq = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height:mq.height * .02),
            const Center(
              child: Text('Chats' ,
               style: TextDesign.titleText,),
               ),
               SizedBox(
                height: mq.height * .03,
               ),
               Container(
                padding: const EdgeInsets.all(8),
                width: double.infinity,
                color: Pallete.backgroundColor,
                child: Card(
                  color: Pallete.white,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:  ListTile(
                    leading: const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('A'),
                    ),
                    title: const Text('Muhammad Awais' , style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Pallete.black,
                      fontSize: 18,
                    ),
                    ),
                    subtitle: Row(
                      children: [
                       const Icon(Icons.done_all, 
                        color: Pallete.blue,
                        size: 22,
                        ),
                        SizedBox(width: mq.width * .020,),
                       const Text('Hy, What Service You want', style: TextDesign.simpleText,),
                      ],
                    ),
                    trailing: Column(
                      children: [
                        SizedBox(height:  mq.height * .005,),
                       const Text('3.00 PM',style: TextDesign.simpleText,),
                       SizedBox(height:  mq.height * .005,),
                      badges.Badge(
                        showBadge: true,
                        badgeStyle: badges.BadgeStyle(
                          badgeColor:Pallete.blue,
                          borderRadius: BorderRadius.circular(45),
                           ),
                        badgeContent:const Text('2', 
                        style: TextStyle(color: Pallete.white),),
                       )
                      ]),
                  ),
                ),
               )
          
          ],
        ),
      )
    );
  }
}