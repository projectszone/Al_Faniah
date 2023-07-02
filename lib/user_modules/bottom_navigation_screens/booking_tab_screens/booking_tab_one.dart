import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../../themes/colors_class.dart';
import '../../../themes/text_class.dart';

class BookingTabOne extends StatefulWidget {
  const BookingTabOne({super.key});

  @override
  State<BookingTabOne> createState() => _BookingTabOneState();
}

class _BookingTabOneState extends State<BookingTabOne> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: OutlinedButton(

        onPressed: (){},
        style: ElevatedButton.styleFrom(
            fixedSize: Size(double.infinity, mq.height * .13),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: mq.height * .02,
                  ),
                  const Text('Dec',
                    style: TextStyle(color: Colors.green,
                      fontSize: 14,),
                  ),
                  const Text('15',
                    style: TextStyle(color: Colors.green,fontSize: 22,fontWeight: FontWeight.bold),),
                  const Text('2021', style: TextStyle(color: Colors.green),),
                ],
              ),
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child:  VerticalDivider(
                  color: Pallete.grey,


                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: mq.height * .02,
                  ),
                  const Text('10:00 AM', style: TextDesign.titleText,),
                  SizedBox(
                    height: mq.height * .005,
                  ),
                  const Text('Muhammad Awais', style: TextDesign.simpleText,),
                  SizedBox(
                    height: mq.height * .005,
                  ),
                  const Text('Cleaner'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
