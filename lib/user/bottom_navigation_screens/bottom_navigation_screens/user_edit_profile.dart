import 'package:al_faniah/main.dart';
import 'package:al_faniah/themes/text_class.dart';
import 'package:al_faniah/user/bottom_navigation_screens/bottom_navigation_screens/user_profile_screen.dart';
import 'package:al_faniah/widgets/back_button.dart';
import 'package:al_faniah/widgets/custom_button.dart';
import 'package:al_faniah/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class UserEditScreen extends StatefulWidget {
  const UserEditScreen({super.key});

  @override
  State<UserEditScreen> createState() => _UserEditScreenState();
}

class _UserEditScreenState extends State<UserEditScreen> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
      children: [
        SizedBox(
          height: mq.height * .05,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CustomBackButton(),
               SizedBox(width: mq.width * .03,),
              Text('Edit Profile', style: TextDesign.titleText,),
            ],
          ),
        ),
        SizedBox(height: mq.height * .02,),
        CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/images/awais.jpeg'),
          radius: 50,
        ),
         SizedBox(height: mq.height * .02,),
        CustomTextFormField(
          hintText: 'Enter Name', 
          prefixIcon: Icons.person, 
          controller: nameController,),
          CustomTextFormField(
          hintText: 'Enter Phone', 
          prefixIcon: Icons.phone, 
          controller: phoneController,),
          SizedBox(height: mq.height * .02,),
          CustomButtonContainer(
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)
              => UserProfileScreen()));
            }, text: 'UPDATE INFORMATION')
        
      ],
      ),
    );
  }
}