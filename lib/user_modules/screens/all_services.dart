import 'package:al_faniah/main.dart';
import 'package:al_faniah/themes/colors_class.dart';
import 'package:al_faniah/widgets/back_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/services_container.dart';

class AllServices extends StatefulWidget {
  const AllServices({super.key});

  @override
  State<AllServices> createState() => _AllServicesState();
}

class _AllServicesState extends State<AllServices> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              Row(
                children: [
                  const CustomBackButton(),
                  SizedBox(
                    width: mq.width * .02,
                  ),
                 const Text('SERVICES',style: TextStyle(
                    color: Pallete.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  ),),
                ],
              ),
              SizedBox(
                height: mq.height* .02,
              ),
              const Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                ],
              ),
              SizedBox(height: mq.height *.03,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                ],
              ),
              SizedBox(height: mq.height *.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomServiceContainer(
                      categoryText: 'Text',
                      serviceImage: 'assets/icons/appliance.png',
                      serviceName: 'Home Appliance\nRepair',
                      ),
                      SizedBox(
                        width: mq.width * .05,
                      ),
                      CustomServiceContainer(
                      categoryText: 'Text',
                      serviceImage: 'assets/icons/ac_repair.png',
                      serviceName: 'AC Repair',
                      ),
                ],
              ),
            ],
          ),
        ) ,
      ));
      
  }
}