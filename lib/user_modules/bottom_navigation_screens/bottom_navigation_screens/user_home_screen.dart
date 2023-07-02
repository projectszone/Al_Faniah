import 'package:al_faniah/main.dart';
import 'package:al_faniah/themes/colors_class.dart';
import 'package:al_faniah/themes/text_class.dart';
import 'package:al_faniah/user_modules/bottom_navigation_screens/features/auto_page_change.dart';
import 'package:al_faniah/widgets/services_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen({super.key});

  @override
  State<UserHomeScreen> createState() => _UserHomeScreenState();
}

class _UserHomeScreenState extends State<UserHomeScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    
    
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(Icons.location_on,
                   color: Pallete.black,
                   size: 28,),
                  SizedBox(width: mq.width * .010 ,),
                  Column(
                    children: [
                      const Text('Current Location', style: TextStyle(
                        fontSize: 14,color: Pallete.black
                      ),),
                      SizedBox(height: mq.height * .003,),
                     const Text('Multan,Pakistan',
                      style: TextStyle(fontSize: 17, 
                      color: Pallete.black,
                      fontWeight: FontWeight.bold),)

                    ],
                  ),

                ],
              ),  
              SizedBox(height: mq.height* .02,),

            const  Padding(
                padding: EdgeInsets.all(8.0),
                child:  TextField(
                  
                  decoration:InputDecoration(
                    suffixIcon: Icon(CupertinoIcons.search,color: Pallete.grey,),
                    filled: true,
                    fillColor: Pallete.backgroundColor,
                    border: InputBorder.none,
                    hintText: 'Search Service Name',
                  ),
                  
                ),
              ),
              SizedBox(
                height: mq.height * .02 ,
              ),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: mq.height * .28,
                      child: AutoPageController(),
                    )
                  ],
                ),
              ),
            const  Align(
                alignment: Alignment.topLeft,
                child: Text('SERVICES', style: TextDesign.titleText,),
                ),
                SizedBox(
                  height: mq.height * .02,
                ),
                 SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                   child: Row(
                     children: [
                       CustomServiceContainer(
                        onTap: (){}, 
                        serviceImage: 'assets/icons/women_salon.png',
                        serviceName: 'Women Salon',
                        ),
                         CustomServiceContainer(
                    onTap: (){}, 
                    serviceImage: 'assets/icons/spa.png',
                    serviceName: 'Spa For Women',
                    ),
                    CustomServiceContainer(
                    onTap: (){}, 
                    serviceImage: 'assets/icons/man_salon.png',
                    serviceName: 'Men Salon',
                    ),
                    CustomServiceContainer(
                    onTap: (){}, 
                    serviceImage: 'assets/icons/plumber.png',
                    serviceName: 'Plumber',
                    ),
                    CustomServiceContainer(
                    onTap: (){}, 
                    serviceImage: 'assets/icons/massage.png',
                    serviceName: 'Man Massage',
                    ),
                    CustomServiceContainer(
                    onTap: (){}, 
                    serviceImage: 'assets/icons/electrician.png',
                    serviceName: 'Electrician',
                    ),
                    CustomServiceContainer(
                    onTap: (){}, 
                    serviceImage: 'assets/icons/cleaning.png',
                    serviceName: 'Home Cleaner',
                    ),
                    CustomServiceContainer(
                    onTap: (){}, 
                    serviceImage: 'assets/icons/carpenter.png',
                    serviceName: 'Carpenter',
                    ),
                    CustomServiceContainer(
                    onTap: (){}, 
                    serviceImage: 'assets/icons/appliance.png',
                    serviceName: 'Home Appliance\nRepair',
                    ),
                    CustomServiceContainer(
                    onTap: (){}, 
                    serviceImage: 'assets/icons/ac_repair.png',
                    serviceName: 'AC Repair',
                    ),
                     ],
                   ),
                 ),
                 
            ],
          ),
        ),
      ),
    );
  }
}