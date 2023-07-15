import 'package:al_faniah/auth/screens/login_as_screen.dart';
import 'package:al_faniah/themes/colors_class.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro1.dart';
import 'intro2.dart';
import 'intro3.dart';

class OnBoardScreens extends StatefulWidget {
  const OnBoardScreens({Key? key}) : super(key: key);

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
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                onLastPage = index == 2;
              });
            },
            children: const [
// first page
              IntroPage1(),
// second page
              IntroPage2(),
// third page
              IntroPage3(),
            ],
          ),

          onLastPage
              ?
// for last page
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => LoginAsScreen()));
                  },
                  child: Container(
                    alignment: Alignment(0, 0.8),
                    child: Container(
                      width: 340,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Pallete.blue,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          'GET STARTED',
                          style: GoogleFonts.lora(
                              fontSize: 16, fontWeight: FontWeight.bold),
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
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Pallete.blue),
                              )))),

                      const SizedBox(
                        width: 60,
                      ),

// smooth indicator
                      SmoothPageIndicator(
                        controller: _pageController,
                        count: 3,
                        effect: WormEffect(
                            dotHeight: 20,
                            dotWidth: 20,
                            activeDotColor: Pallete.blue),
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
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              )))),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
