import 'package:al_faniah/main.dart';
import 'package:al_faniah/themes/colors_class.dart';
import 'package:al_faniah/themes/text_class.dart';
import 'package:al_faniah/user_modules/screens/vendors/order_adress_screen.dart';
import 'package:al_faniah/user_modules/screens/vendors/order_requirements.dart';
import 'package:al_faniah/user_modules/screens/vendors/vendor_reviews.dart';
import 'package:al_faniah/widgets/back_button.dart';
import 'package:al_faniah/widgets/outlined_button.dart';
import 'package:al_faniah/widgets/reviews_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VendorInformationScreen extends StatefulWidget {
  const VendorInformationScreen({super.key});

  @override
  State<VendorInformationScreen> createState() => _VendorInformationScreenState();
}

class _VendorInformationScreenState extends State<VendorInformationScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      body: SafeArea(
        child:Stack(
          children: [
           Container(
            height: mq.height*.3,
            width: mq.width *1,
            child: const Opacity(
              opacity: 0.4,
              child: Image(
                image: AssetImage('assets/images/awais.jpeg'),
                fit: BoxFit.fill,
                ),
            ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomBackButton(),
            ),
            Positioned(
              top: mq.height * .22,
              left: mq.width* .03,
              child: const Text('PLUMBER',
              style: TextStyle(color: Pallete.white,
              fontSize: 26,
              fontWeight: FontWeight.bold),),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: mq.width * 1.0,
                height: mq.height * .7,
                decoration: const BoxDecoration(
                  color: Pallete.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       const Padding(
                         padding: EdgeInsets.only(top:20.0,right: 10,left: 15,bottom: 8),
                         child: Text('MUHAMMAD AWAIS',
                                           style: TextStyle(
                          color: Pallete.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          ),
                       ),
                       ),
                        const Padding(
                         padding: EdgeInsets.only(right: 10,left: 15,bottom: 8),
                          child: Text('Hello My name is awais and i can do plumbering very well,Hello My name is awais and i can do plumbering very well,Hello My name is awais and i can do plumbering very well,Hello My name is awais and i can do plumbering very well,',
                                             ),
                        ),
                        SizedBox(
                          height: mq.height *.05,
                        ),
                        Container(
                          width: double.infinity,
                          height: mq.height *.01,
                          color: Pallete.backgroundColor,
                        ),
                        SizedBox(
                          height: mq.height* .01,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  const Text('Jobs', 
                                  style: TextStyle(color: Pallete.grey,fontSize: 14,fontWeight: FontWeight.bold),),
                                  SizedBox(height: mq.height*.01,),
                                  const Text('155',style: TextStyle(
                                    color: Pallete.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ],
                              ),
                              Column(
                                children: [
                                  const Text('Rate', 
                                  style: TextStyle(color: Pallete.grey,fontSize: 14,fontWeight: FontWeight.bold),),
                                  SizedBox(height: mq.height*.01,),
                                  const Text("4999 dhm",style: TextStyle(
                                    color: Pallete.blue,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ],
                              ),
                              Column(
                                children: [
                                  const Text('Rating', 
                                  style: TextStyle(color: Pallete.grey,fontSize: 14,fontWeight: FontWeight.bold),),
                                  SizedBox(height: mq.height*.01,),
                                   const Row(
                                     children: [
                                      Icon(Icons.star,
                                      color: Colors.yellow,),
                                       Text('5.0',style: TextStyle(
                                        color: Pallete.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold
                                          ),
                                          ),
                                          Text('(99)',style: TextStyle(
                                        color: Pallete.grey,
                                        fontSize: 16,
                                          ),
                                          ),
                                     ],
                                   ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: mq.height *.02,),
                        const Divider(
                          color: Pallete.black,
                        ),
                        const Padding(
                         padding: EdgeInsets.only(top:20.0,right: 10,left: 15,bottom: 8),
                         child: Text('DETAILS',
                                           style: TextStyle(
                          color: Pallete.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          ),
                       ),
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal:16.0),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Duration',style: TextDesign.descriptionText,),
                            SizedBox( width:  mq.width * .03,),
                            Text('3-6 hours'),
                          ],
                         ),
                       ),
                       SizedBox(height:  mq.height * .02,),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal:16.0),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Turnaround time',style: TextDesign.descriptionText,),
                            SizedBox( width:  mq.width * .03,),
                            Text('2 hours'),
                          ],
                         ),
                       ),
                       SizedBox(height:  mq.height * .02,),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal:16.0),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Bathroom cleaning',style: TextDesign.descriptionText,),
                            SizedBox( width:  mq.width * .03,),
                            Row(
                              children: [
                                Icon(Icons.check, color: Colors.green,),
                                SizedBox(width: mq.width * .01,),
                                Text('Included'),
                              ],
                            ),
                          ],
                         ),
                       ),
                       SizedBox(height:  mq.height * .02,),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal:16.0),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Bedroom cleaning',style: TextDesign.descriptionText,),
                            SizedBox( width:  mq.width * .03,),
                            Row(
                              children: [
                                Icon(Icons.check, color: Colors.green,),
                                SizedBox(width: mq.width * .01,),
                                Text('Included'),
                              ],
                            ),
                          ],
                         ),
                       ),
                       SizedBox(height:  mq.height * .02,),
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal:16.0),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Over cleaning',style: TextDesign.descriptionText,),
                            SizedBox( width:  mq.width * .03,),
                            Row(
                              children: [
                                Icon(CupertinoIcons.multiply, color: Colors.red,),
                                SizedBox(width: mq.width * .01,),
                                Text('Not Included'),
                              ],
                            ),
                          ],
                         ),
                       ),
                       SizedBox(
                          height: mq.height *.05,
                        ),
                        Container(
                          width: double.infinity,
                          height: mq.height *.01,
                          color: Pallete.backgroundColor,
                        ),
                        const Padding(
                         padding: EdgeInsets.only(top:20.0,right: 10,left: 15,bottom: 8),
                         child: Text('REVIEWS',
                                           style: TextStyle(
                          color: Pallete.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          ),
                       ),
                       ),
                      const ReviewsListTile(
                        name: 'Muhammad Awais', 
                        review: 'Nice Work', 
                        rating: 5.0, 
                        profile: 'assets/images/awais.jpeg'
                        ),
                      const  ReviewsListTile(
                        name: 'Muhammad Anas', 
                        review: 'Good Work', 
                        rating: 3.0, 
                        profile: 'assets/images/awais.jpeg'
                        ),
                       const ReviewsListTile(
                        name: 'Shah Zaman ', 
                        review: 'Nice Work', 
                        rating: 4.5, 
                        profile: 'assets/images/awais.jpeg'
                        ),
                        SizedBox(height: mq.height * .02,),
                        Center(
                          child: OutlinedButton(
                          onPressed: (){
                            Navigator.push(context, 
                            MaterialPageRoute(builder: (_) =>
                            VendorReviewScreen()));
                          },
                          style: ButtonStyle(
                            side: MaterialStateProperty.all<BorderSide>(
                              BorderSide(color: Colors.blue), // Set your desired border color here
                            ),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            fixedSize: MaterialStateProperty.all<Size>(
                              Size(mq.width * .85, mq.height * .03),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Show All Reviews',
                              style: TextDesign.outlineButtonText,
                            ),
                          ),
                        ),
                        ),
                        SizedBox(height: mq.height * .1,),
                    ],
                  ),
                ),               
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)
                  => OrderRequirementScreen()));
                },
                child: Container(
                  width: mq.width * 1.0,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(35),topRight: Radius.circular(35))
                  ),
                  child: Center(
                    child: Text('BOOK NOW', style: TextStyle(
                      color: Pallete.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ),
            )
          ],
        ), ),
    );
  }
}