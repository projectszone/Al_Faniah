import 'dart:async';
import 'package:al_faniah/themes/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AutoPageController extends StatefulWidget {
  const AutoPageController({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AutoPageControllerState createState() => _AutoPageControllerState();
}

class _AutoPageControllerState extends State<AutoPageController> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoPageTransition();
  }

  @override
  void dispose() {
    _stopAutoPageTransition();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoPageTransition() {
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  void _stopAutoPageTransition() {
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: [
              Stack(
                children: [
                   Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/plumber.jpg',),
                      fit: BoxFit.cover,
                      )
                    ),
                    
                    width: double.infinity,
                    
                  ),
                   Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Column(
                       children:const [
                        SizedBox(height: 50,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Kitchen & Washroom\nPlumbring',
                          style: TextStyle(color: Pallete.white,
                          fontSize: 22,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 200),
                          child: Divider(
                            color: Pallete.white,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('3 Steps process for\na spotless finish',
                          style: TextStyle(color: Pallete.white,
                          fontSize: 18,),
                          ),
                        ),
                       ],
                     ),
                   )
                ],
              ),
               Stack(
                children: [
                   Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/plumber.jpg',),
                      fit: BoxFit.cover,
                      )
                    ),
                    
                    width: double.infinity,
                    
                  ),
                   Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Column(
                       children:const [
                        SizedBox(height: 50,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Kitchen & Washroom\nPlumbring',
                          style: TextStyle(color: Pallete.white,
                          fontSize: 22,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 200),
                          child: Divider(
                            color: Pallete.white,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('3 Steps process for\na spotless finish',
                          style: TextStyle(color: Pallete.white,
                          fontSize: 18,),
                          ),
                        ),
                       ],
                     ),
                   )
                ],
              ),
                Stack(
                children: [
                   Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/plumber.jpg',),
                      fit: BoxFit.cover,
                      )
                    ),
                    
                    width: double.infinity,
                    
                  ),
                   Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Column(
                       children:const [
                        SizedBox(height: 50,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('Kitchen & Washroom\nPlumbring',
                          style: TextStyle(color: Pallete.white,
                          fontSize: 22,fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 200),
                          child: Divider(
                            color: Pallete.white,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('3 Steps process for\na spotless finish',
                          style: TextStyle(color: Pallete.white,
                          fontSize: 18,),
                          ),
                        ),
                       ],
                     ),
                   )
                ],
              ),       

            ],
          ),
          
 Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect:const ExpandingDotsEffect(
                  activeDotColor: Colors.blue,
                  dotColor: Colors.grey,
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


