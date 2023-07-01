import 'package:al_faniah/main.dart';
import 'package:al_faniah/themes/text_class.dart';
import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const CustomOutlinedButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    });

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return OutlinedButton(
  onPressed: onPressed,
  style: ButtonStyle(
    side: MaterialStateProperty.all<BorderSide>(
      BorderSide(color: Colors.blue), // Set your desired border color here
    ),
    shape: MaterialStateProperty.all<OutlinedBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    fixedSize: MaterialStateProperty.all<Size>(
      Size(mq.width * .35, mq.height * .03),
    ),
  ),
  child: Center(
    child: Text(
      buttonText,
      style: TextDesign.outlineButtonText,
    ),
  ),
)
;
  }
}