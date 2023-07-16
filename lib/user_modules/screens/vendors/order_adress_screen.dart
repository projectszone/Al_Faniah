import 'package:al_faniah/main.dart';
import 'package:al_faniah/themes/colors_class.dart';
import 'package:al_faniah/user_modules/screens/vendors/home_adress.dart';
import 'package:al_faniah/user_modules/screens/vendors/office_adress.dart';
import 'package:al_faniah/widgets/back_button.dart';
import 'package:flutter/material.dart';

import '../../../themes/text_class.dart';

class OrderAddressScreen extends StatefulWidget {
  const OrderAddressScreen({super.key});

  @override
  State<OrderAddressScreen> createState() => _OrderAddressScreenState();
}

class _OrderAddressScreenState extends State<OrderAddressScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image(
              fit: BoxFit.fill,
              height: mq.height * 0.4,
              image: AssetImage('assets/images/map.jpg')),
            const Positioned(
              top: 20,
              left: 20,
              child: CustomBackButton()),
             Align(
              alignment: Alignment.bottomCenter,
               child: Container(
                width: mq.width * 1,
                height: mq.height * .56,
                decoration: BoxDecoration(
                  color: Pallete.backgroundColor
                ),
                child: Column(
                  children: [
                    SizedBox(
                height: mq.height * .02,
              ),
              Card(
                color: Pallete.backgroundColor,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Pallete.tabColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    controller: _tabController,
                    isScrollable: true,
                    labelPadding:
                        EdgeInsets.symmetric(horizontal: mq.width * .18),
                    tabs: const [
                      Tab(
                        child:
                            Text('Office', style: TextDesign.descriptionText),
                      ),
                      Tab(
                        child: Text('Home', style: TextDesign.descriptionText),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: mq.height * .04,
              ),
              Expanded(
                child: TabBarView(controller: _tabController, children: const [
                  OfficeAddressScreen(),
                  HomeAddressScreen(),
                ]),
              ),
                  ],
                ),
               ),
             )
          ],
        ),
      ),
    );
  }
}