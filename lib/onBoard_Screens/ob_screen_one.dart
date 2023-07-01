import 'package:al_faniah/main.dart';
import 'package:al_faniah/themes/colors_class.dart';
import 'package:flutter/material.dart';

class OBScreenOne extends StatefulWidget {
  const OBScreenOne({super.key});

  @override
  State<OBScreenOne> createState() => _OBScreenOneState();
}

class _OBScreenOneState extends State<OBScreenOne> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
         SizedBox(
          height: mq.height * .10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               height: mq.height * .20,
               width: mq.width * .4,
               decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(25), 
               color: Pallete.black,
               ), 
               ),
           ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            height: mq.height * .25,
            width: mq.width * .4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Pallete.black,
            ), 
           ),
          ),
        ],
       ),  
      ],
     ),
   );    
  }
}