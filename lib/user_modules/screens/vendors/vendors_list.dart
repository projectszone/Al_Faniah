import 'package:al_faniah/themes/colors_class.dart';
import 'package:al_faniah/themes/text_class.dart';
import 'package:al_faniah/user_modules/screens/vendors/vendor_information_screen.dart';
import 'package:al_faniah/widgets/back_button.dart';
import 'package:al_faniah/widgets/vendors_list_tile.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';

class VendorList extends StatefulWidget {
  final String categoryText;
  const VendorList({super.key, required this.categoryText});

  @override
  State<VendorList> createState() => _VendorListState();
}

class _VendorListState extends State<VendorList> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const CustomBackButton(),
                  SizedBox(
                    width: mq.width * .03,
                  ),
                  Text(widget.categoryText ,style:  TextDesign.titleText,),
                  
                  
                ],
              ),
            ),
            SizedBox(height: mq.height * .005,),
                Container(
                  width: double.infinity,
                  height: mq.height * .01,
                  color: Pallete.backgroundColor,
                ),
                SizedBox(
                  height: mq.height * .02,
                ),
            VendorsListTile(
                  name: 'Muhammad Awais', 
                  profile: 'assets/images/awais.jpeg', 
                  city: 'Multan', 
                  rating: '5.0', 
                  onTap: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (_) => const VendorInformationScreen()));
                  },
                  ),
                  
          ],
        )
        ),
    );
  }
}