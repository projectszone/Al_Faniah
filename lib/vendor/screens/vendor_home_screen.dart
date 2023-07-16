import 'package:al_faniah/auth/screens/login_as_screen.dart';
import 'package:al_faniah/main.dart';
import 'package:al_faniah/themes/colors_class.dart';
import 'package:al_faniah/vendor/screens/reviews_screen.dart';
import 'package:al_faniah/vendor/screens/update_information.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:badges/badges.dart' as badge;
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import 'package:flutter/material.dart';

import '../requests_screens/active_requests.dart';
import '../requests_screens/completed_requests.dart';
import '../requests_screens/pending_requests.dart';

class VendorHomeScreen extends ConsumerStatefulWidget {
  const VendorHomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VendorHomeScreenState();
}

class _VendorHomeScreenState extends ConsumerState<VendorHomeScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
//appbar
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'VENDOR SCREEN',
        ),
      ),

      // navigation code
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(),
              accountName: Text(
                'Nicole Thomas',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black),
              ),
              accountEmail: Text(
                'Cleaner',
                style: TextStyle(color: Colors.black),
              ),
              currentAccountPicture: badge.Badge(
                position: badge.BadgePosition.topEnd(end: -5, top: 10),
                showBadge: true,
                badgeStyle: badge.BadgeStyle(
                  padding: EdgeInsets.all(8),
                  shape: badge.BadgeShape.circle,
                  borderRadius: BorderRadius.circular(100),
                  badgeColor: Colors.red,
                ),
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.blue,
                  backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?size=626&ext=jpg&uid=R109865333&ga=GA1.1.1714543575.1689421395&semt=ais'),
                ),
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.done_all_outlined,
                // color: AppTheme.colors.appbar,
              ),
              title: Text(
                'Availibility',
                // style: TextStyle(color: AppTheme.colors.appbar),
              ),
              trailing: Padding(
                padding: const EdgeInsets.all(10.0),
                child: LiteRollingSwitch(
                  value: true,
                  width: 50,
                  textOn: '',
                  textOff: '',
                  colorOn: Colors.red,
                  colorOff: Colors.green,
                  iconOn: Icons.dangerous_outlined,
                  iconOff: Icons.done,
                  animationDuration: const Duration(milliseconds: 300),
                  onChanged: (bool state) {},
                  onDoubleTap: () {},
                  onSwipe: () {},
                  onTap: () {},
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ReviewsScreen()));
              },
              leading: Icon(
                Icons.reviews,
                // color: AppTheme.colors.appbar,
              ),
              title: Text(
                'Reviews',
                // style: TextStyle(color: AppTheme.colors.appbar),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UpdateInformation()));
              },
              leading: Icon(
                Icons.update,
                // color: AppTheme.colors.appbar,
              ),
              title: Text(
                'Update Information',
                // style: TextStyle(color: AppTheme.colors.appbar),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginAsScreen()));
              },
              leading: Icon(
                Icons.logout_rounded,
                // color: AppTheme.colors.appbar,
              ),
              title: Text(
                'Log out',
                // style: TextStyle(color: AppTheme.colors.appbar),
              ),
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          // image code
          const Center(
            child: Image(
              height: 250,
              width: 250,
              image: AssetImage('assets/icons/logo.png'),
            ),
          ),

          SizedBox(
            height: mq.height * 0.06,
          ),
          // pending request code
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => PendingRequests()));
            },
            child: Container(
              height: mq.height * 0.06,
              width: mq.width * 0.6,
              decoration: BoxDecoration(
                color: Pallete.blue,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    // color: AppTheme.colors.appbar,
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'PENDING REQUESTS',
                      style: TextStyle(
                        color: Pallete.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.forward_rounded,
                      color: Pallete.white,
                    )
                  ],
                ),
              ),
            ),
          ),

          SizedBox(
            height: mq.height * 0.03,
          ),

          // active request code
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const ActiveRequest()));
            },
            child: Container(
              height: mq.height * 0.06,
              width: mq.width * 0.6,
              decoration: BoxDecoration(
                color: Pallete.blue,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    // color: AppTheme.colors.appbar,
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'ACTIVE REQUESTS',
                      style: TextStyle(
                        color: Pallete.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.forward_rounded,
                      color: Pallete.white,
                    )
                  ],
                ),
              ),
            ),
          ),

          SizedBox(
            height: mq.height * 0.03,
          ),

          //completed request code
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => const CompletedRequests()));
            },
            child: Container(
              height: mq.height * 0.06,
              width: mq.width * 0.6,
              decoration: BoxDecoration(
                color: Pallete.blue,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    // color: AppTheme.colors.appbar,
                    blurRadius: 2,
                  ),
                ],
              ),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'COMPLETED  REQUESTS',
                      style: TextStyle(
                        color: Pallete.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.forward_rounded,
                      color: Pallete.white,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
