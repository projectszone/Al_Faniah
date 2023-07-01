import 'package:al_faniah/onBoard_Screens/ob_screen_one.dart';
import 'package:al_faniah/onBoard_Screens/ob_screen_three.dart';
import 'package:al_faniah/onBoard_Screens/ob_screen_two.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardScreens extends StatefulWidget {
  const OnBoardScreens({super.key});

  @override
  State<OnBoardScreens> createState() => _OnBoardScreensState();
}

class _OnBoardScreensState extends State<OnBoardScreens> {
  // contoller
  PageController _pageController = PageController();

  // record for last page
  bool onLastPage = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
//pageview code
          PageView(
            allowImplicitScrolling: true,
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                onLastPage = index == 2;
              });
            },
            children: const [
// first page
              OBScreenOne(),
// second page
              OBScreenTwo(),
// third page
              OBScreenThree(),
            ],
          ),

          onLastPage
              ?
// for last page
              InkWell(
                onTap: (){
                },
                child: Container(
                  alignment: Alignment(0,0.8),
                  child: Container(
                      width: 340,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'GET STARTED',
                          ),
                      ),
                    ),
                ),
              )

// for first two pages
              : Container(
                  alignment: Alignment(0, 0.8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
//skip
                      GestureDetector(
                          onTap: () {
                            _pageController.jumpToPage(2);
                          },
                          child: Container(
                              width: 80,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                  child: Text(
                                'SKIP',
                              )))),

                      const SizedBox(
                        width: 70,
                      ),

// smooth indicator
                      SmoothPageIndicator(
                        controller: _pageController,
                        count: 3,
                        effect: WormEffect(
                          ),
                      ),

                      const SizedBox(
                        width: 70,
                      ),

// next or done
                      GestureDetector(
                          onTap: () {
                            _pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          },
                          child: Container(
                              width: 80,
                              height: 30,
                              decoration: BoxDecoration(
                                
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                  child: Text(
                                'NEXT',
                              )))),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}