import 'package:al_faniah/main.dart';
import 'package:al_faniah/themes/colors_class.dart';
import 'package:al_faniah/user/bottom_navigation_screens/booking_tab_screens/booking_tab_one.dart';
import 'package:al_faniah/user/bottom_navigation_screens/booking_tab_screens/booking_tab_three.dart';
import 'package:al_faniah/user/bottom_navigation_screens/booking_tab_screens/booking_tab_two.dart';
import 'package:flutter/material.dart';
import '../../../themes/text_class.dart';

class UserBookingScreen extends StatefulWidget {
  const UserBookingScreen({super.key});

  @override
  State<UserBookingScreen> createState() => _UserBookingScreenState();
}

class _UserBookingScreenState extends State<UserBookingScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                        EdgeInsets.symmetric(horizontal: mq.width * .088),
                    tabs: const [
                      Tab(
                        child:
                            Text('Upcoming', style: TextDesign.descriptionText),
                      ),
                      Tab(
                        child: Text('Past', style: TextDesign.descriptionText),
                      ),
                      Tab(
                        child: Text(
                          'Cancelled',
                          style: TextDesign.descriptionText,
                        ),
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
                  BookingTabOne(),
                  BookingTabTwo(),
                  BookingTabThree(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
