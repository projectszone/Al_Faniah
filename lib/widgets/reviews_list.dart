import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../themes/colors_class.dart';
import '../themes/text_class.dart';

class ReviewsListTile extends StatelessWidget {
  final String name;
  final String profile;
  final String review;
  final double rating;
  const ReviewsListTile({
    super.key,
    required this.name,
    required this.review,
    required this.rating,
    required this.profile,
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
            radius: 25,
            backgroundImage: AssetImage(profile),
          ),
          title: Text(name, style:TextDesign.descriptionText),
          subtitle: Text(review, style: TextDesign.outlineButtonText,),
          trailing: RatingBarIndicator(
    rating: rating,
    itemBuilder: (context, index) => Icon(
         Icons.star,
         color: Colors.amber,
    ),
    itemCount: 5,
    itemSize: 20.0,
    direction: Axis.horizontal,
),
       
        ),
      ),
    );
  }
}