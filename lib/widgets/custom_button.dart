import 'package:al_faniah/main.dart';
import 'package:flutter/material.dart';

import '../themes/colors_class.dart';
import '../themes/text_class.dart';

class CustomButtonContainer extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButtonContainer({
    super.key,
    required this.onTap,
    required this.text
    });

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: mq.height * .06,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Pallete.blue,
            borderRadius: BorderRadius.circular(15),
          ),
          child:  Center(
            child: Text(text,
              style: TextDesign.buttonText,
            ),
          ),
        ),
      ),
    );
  }
}