import 'package:al_faniah/main.dart';
import 'package:al_faniah/themes/colors_class.dart';
import 'package:al_faniah/themes/text_class.dart';
import 'package:al_faniah/user/bottom_navigation_screens/features/auto_page_change.dart';
import 'package:al_faniah/user_modules/screens/all_services.dart';
import 'package:al_faniah/widgets/service_card.dart';
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
                  const Icon(
                    Icons.location_on,
                    color: Pallete.black,
                    size: 28,
                  ),
                  SizedBox(
                    width: mq.width * .010,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Current Location',
                        style: TextStyle(fontSize: 14, color: Pallete.black),
                      ),
                      SizedBox(
                        height: mq.height * .003,
                      ),
                      const Text(
                        'Multan,Pakistan',
                        style: TextStyle(
                            fontSize: 17,
                            color: Pallete.black,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: mq.height * .02,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      CupertinoIcons.search,
                      color: Pallete.grey,
                    ),
                    filled: true,
                    fillColor: Pallete.backgroundColor,
                    border: InputBorder.none,
                    hintText: 'Search Service Name',
                  ),
                ),
              ),
              SizedBox(
                height: mq.height * .02,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'SERVICES',
                    style: TextDesign.titleText,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (_) =>
                      AllServices()));
                    },
                    child: Container(
                      child: const Row(
                        children: [
                          Text('See All', style: TextStyle(fontSize: 22,color: Pallete.blue),),
                          Icon(Icons.arrow_forward_ios,color: Pallete.blue,size: 22,)
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: mq.height * .02,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomServiceContainer(
                      categoryText: 'Text',
                      serviceImage: 'assets/icons/women_salon.png',
                      serviceName: 'Women Salon',
                    ),
                    CustomServiceContainer(
                      categoryText: 'Text',
                      serviceImage: 'assets/icons/spa.png',
                      serviceName: 'Spa For Women',
                    ),
                    CustomServiceContainer(
                      categoryText: 'Text',
                      serviceImage: 'assets/icons/man_salon.png',
                      serviceName: 'Men Salon',
                    ),
                    CustomServiceContainer(
                      categoryText: 'Text',
                      serviceImage: 'assets/icons/plumber.png',
                      serviceName: 'Plumber',
                    ),
                    CustomServiceContainer(
                      categoryText: 'Text',
                      serviceImage: 'assets/icons/massage.png',
                      serviceName: 'Man Massage',
                    ),
                    CustomServiceContainer(
                      categoryText: 'Text',
                      serviceImage: 'assets/icons/electrician.png',
                      serviceName: 'Electrician',
                    ),
                    CustomServiceContainer(
                      categoryText: 'Text',
                      serviceImage: 'assets/icons/cleaning.png',
                      serviceName: 'Home Cleaner',
                    ),
                    CustomServiceContainer(
                      categoryText: 'Text',
                      serviceImage: 'assets/icons/carpenter.png',
                      serviceName: 'Carpenter',
                    ),
                    CustomServiceContainer(
                      categoryText: 'Text',
                      serviceImage: 'assets/icons/appliance.png',
                      serviceName: 'Home Appliance\nRepair',
                    ),
                    CustomServiceContainer(
                      categoryText: 'Text',
                      serviceImage: 'assets/icons/ac_repair.png',
                      serviceName: 'AC Repair',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: mq.height * .015,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomServiceCard(
                    imageUrl: 'assets/images/plumber.jpg', 
                    text: 'Plumber', 
                    onTap: (){},
                    ),
                    CustomServiceCard(
                    imageUrl: 'assets/images/plumber.jpg', 
                    text: 'Plumber', 
                    onTap: (){},
                    ),
                    CustomServiceCard(
                    imageUrl: 'assets/images/plumber.jpg', 
                    text: 'Plumber', 
                    onTap: (){},
                    ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
