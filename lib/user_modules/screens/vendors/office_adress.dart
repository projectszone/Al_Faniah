import 'package:al_faniah/main.dart';
import 'package:al_faniah/widgets/login_signup_button.dart';
import 'package:flutter/material.dart';

import '../../../themes/colors_class.dart';
import '../../../themes/text_class.dart';
import '../../../widgets/adress_text.dart';
import '../../../widgets/custom_button.dart';

class OfficeAddressScreen extends StatefulWidget {
  const OfficeAddressScreen({super.key});

  @override
  State<OfficeAddressScreen> createState() => _OfficeAddressScreenState();
}

class _OfficeAddressScreenState extends State<OfficeAddressScreen> {
  
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