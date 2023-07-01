import 'package:al_faniah/main.dart';
import 'package:al_faniah/themes/colors_class.dart';
import 'package:al_faniah/themes/text_class.dart';
import 'package:flutter/material.dart';

class CustomLoginSignUpButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;

  const CustomLoginSignUpButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){},
        child: Container(
          height: mq.height * .06,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Pallete.blue,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(buttonText,
            style: TextDesign.buttonText
            ,),
          ),
        ),
        
    ),
    );
  }
}
