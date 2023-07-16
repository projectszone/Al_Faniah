import 'package:al_faniah/widgets/adress_text.dart';
import 'package:al_faniah/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../../themes/colors_class.dart';
import '../../../themes/text_class.dart';

class HomeAddressScreen extends StatefulWidget {
  const HomeAddressScreen({super.key});

  @override
  State<HomeAddressScreen> createState() => _HomeAddressScreenState();
}

class _HomeAddressScreenState extends State<HomeAddressScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Column(mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAddressText(
          textHeading: 'Your Pick Address', 
          textSubtitle: 'Technology Bucx',
          ),
          const SizedBox(
            height: 35,
          ),
          const CustomAddressText(
          textHeading: 'Street/Building/Flat', 
          textSubtitle: '603, sub',
          ),
           const SizedBox(
            height: 35,
          ),
          const CustomAddressText(
          textHeading: 'Your Name', 
          textSubtitle: 'Muhammad Anas',
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButtonContainer(onTap: (){}, text: 'Continue')
      ],
    );
  }
}