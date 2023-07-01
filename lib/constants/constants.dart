import 'package:al_faniah/user_modules/bottom_navigation_screens/bottom_navigation_screens/user_booking_screen.dart';
import 'package:al_faniah/user_modules/bottom_navigation_screens/bottom_navigation_screens/user_home_screen.dart';
import 'package:al_faniah/user_modules/bottom_navigation_screens/bottom_navigation_screens/user_message_screen.dart';
import 'package:al_faniah/user_modules/bottom_navigation_screens/bottom_navigation_screens/user_profile_screen.dart';

class Constants{
   static const tabWidgets = [
    UserHomeScreen(),
    UserBookingScreen(),
    UserMessageScreen(),
    UserProfileScreen(),
  ];
}