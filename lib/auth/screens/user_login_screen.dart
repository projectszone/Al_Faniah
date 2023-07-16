import 'package:al_faniah/constants/constants.dart';
import 'package:al_faniah/main.dart';
import 'package:al_faniah/themes/text_class.dart';
import 'package:al_faniah/widgets/custom_text_form_field.dart';
import 'package:al_faniah/widgets/login_signup_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserLoginScreen extends StatefulWidget {
  const UserLoginScreen({super.key});

  @override
  State<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: mq.height * .10,
            ),
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('A'),
            ),
            SizedBox(
              height: mq.height * .01,
            ),
            const Text(
              'Your Home Service Expert',
              style: TextDesign.titleText,
            ),
            SizedBox(
              height: mq.height * .001,
            ),
            const Text(
              'Quick - Affordable - Trusted',
              style: TextDesign.descriptionText,
            ),
            SizedBox(
              height: mq.height * .07,
            ),
            CustomTextFormField(
              controller: emailController,
              hintText: 'Enter Email',
              prefixIcon: CupertinoIcons.mail,
            ),
            CustomTextFormField(
              controller: passwordController,
              hintText: 'Enter Password',
              prefixIcon: CupertinoIcons.lock_circle,
              suffixIcon: CupertinoIcons.eye_fill,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forget Password',
                      style: TextDesign.simpleText,
                    )),
              ),
            ),
            SizedBox(
              height: mq.height * .035,
            ),
            CustomLoginSignUpButton(
              buttonText: 'Login',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
