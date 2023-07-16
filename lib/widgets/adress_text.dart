import 'package:al_faniah/themes/text_class.dart';
import 'package:flutter/material.dart';

class CustomAddressText extends StatelessWidget {
 final String textHeading;
 final String textSubtitle;
  const CustomAddressText({super.key, required this.textHeading, required this.textSubtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:16.0),
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(textHeading, style: TextDesign.descriptionText,),
          SizedBox(height: 10,),
          Text(textSubtitle, style: TextDesign.titleText,),
        ],
      ),
    );
  }
}