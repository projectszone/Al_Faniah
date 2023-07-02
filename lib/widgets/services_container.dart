import 'package:al_faniah/themes/colors_class.dart';
import 'package:flutter/material.dart';

class CustomServiceContainer extends StatelessWidget {
  final String serviceImage;
  final VoidCallback onTap;
  final String serviceName;

  const CustomServiceContainer({
    Key? key,
    required this.onTap,
    required this.serviceImage,
    required this.serviceName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double cardHeightWidth = 80;
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: SizedBox(
            height: cardHeightWidth,
            width: cardHeightWidth,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.white,
              elevation: 2,
              child: Center(
                child: Image.asset(
                  
                  serviceImage,
                  fit: BoxFit.fill,),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(serviceName,
        style: TextStyle(fontSize: 11, color: Pallete.black,fontWeight: FontWeight.bold),),
      ],
    );
  }
}
