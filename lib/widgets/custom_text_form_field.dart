import 'package:al_faniah/themes/colors_class.dart';
import 'package:al_faniah/themes/text_class.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;

  const CustomTextFormField({
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextDesign.simpleText,
          filled: true,
          fillColor: Pallete.textFormColor,
          prefixIcon: Icon(prefixIcon, color: Pallete.black,),
          suffixIcon: Icon(suffixIcon, color: Pallete.black,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Pallete.grey, // Customize border color
        width: 1.0, // Customize border width
      ),
      borderRadius: BorderRadius.circular(10.0),
    ),
        ),
      ),
    );
  }
}
