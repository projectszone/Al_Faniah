import 'package:al_faniah/themes/text_class.dart';
import 'package:al_faniah/widgets/back_button.dart';
import 'package:al_faniah/widgets/reviews_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VendorReviewScreen extends ConsumerWidget {
  const VendorReviewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomBackButton(),
SizedBox(width: 20,),
                  Text('All Reviews', style: TextDesign.titleText,),
                ],
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (BuildContext context ,int index){
                   return ReviewsListTile(
                    name: 'Muhammad Awais', 
                    review: 'Nice', 
                    rating: 4.5, 
                    profile: 'assets/images/awais.jpeg');
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}