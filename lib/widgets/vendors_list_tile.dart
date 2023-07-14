import 'package:al_faniah/themes/colors_class.dart';
import 'package:flutter/material.dart';

import '../themes/text_class.dart';

class VendorsListTile extends StatelessWidget {
  final String name;
  final String profile;
  final String city;
  final String rating;
  final VoidCallback onTap;
  const VendorsListTile({
    super.key,
    required this.name,
    required this.profile,
    required this.city,
    required this.rating,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        color: Pallete.backgroundColor,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 30,
            backgroundImage: AssetImage(profile),
          ),
          title: Text(name, style:TextDesign.descriptionText),
          subtitle: Text(city, style: TextDesign.outlineButtonText,),
          trailing: Text(rating, style: const TextStyle(
            color: Color.fromARGB(255, 255, 72, 0),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),),
          onTap: onTap,
        ),
      ),
    );
  }
}