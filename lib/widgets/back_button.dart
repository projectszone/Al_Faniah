import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes/colors_class.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Pallete.backgroundColor,
                        borderRadius: BorderRadius.circular(45),
                        border: Border.all(color: Pallete.grey),
                      ),
                      child: const Icon(CupertinoIcons.back,
                      color: Pallete.grey,
                      
                      ),
                    ),
                  );
  }
}