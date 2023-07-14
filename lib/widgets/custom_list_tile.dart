import 'package:al_faniah/themes/colors_class.dart';
import 'package:al_faniah/themes/text_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final IconData leading;
  final VoidCallback onTap;
  const CustomListTile({
    super.key,
    required this.leading,
    required this.title,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        elevation: 1,
        color: Pallete.white,
        child: ListTile(
          leading: Icon(leading, color: Pallete.blue,size: 26,),
          title: Text(title, style: TextDesign.descriptionText,),
          trailing: Icon(CupertinoIcons.forward, color: Pallete.black,),
          onTap: onTap,
        ),
      ),
    );
  }
}