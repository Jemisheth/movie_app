import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/utils/colors.dart';
import 'package:movie_app/views/IntroScreens/page1.dart';
import 'package:movie_app/views/IntroScreens/page2.dart';
import 'package:movie_app/views/IntroScreens/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'home_view.dart';

class OnBoardingScreens extends StatefulWidget {
  const OnBoardingScreens({super.key});

  @override
  State<OnBoardingScreens> createState() => _OnBoardingScreensState();
}

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  PageController pageController = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        // pageview
        PageView(
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 2);
            });
          },
          controller: pageController,
          children: [Page1(), Page2(), Page3()],
        ),

        // dots
        Container(
          alignment: const Alignment(0, .90),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  pageController.jumpToPage(2);
                },
                child: Text(
                  'Skip',
                  style: GoogleFonts.rocknRollOne(fontSize: 20, color: white),
                ),
              ),
              SmoothPageIndicator(
                controller: pageController,
                count: 3,
              ),
              onLastPage
                  ? GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()));
                      },
                      child: Text(
                        'Done',
                        style: GoogleFonts.rocknRollOne(
                            fontSize: 20, color: white),
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        pageController.nextPage(
                          duration: const Duration(microseconds: 500),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Text(
                        'Next',
                        style: GoogleFonts.rocknRollOne(
                            fontSize: 20, color: white),
                      ),
                    )
            ],
          ),
        )
      ]),
    );
  }
}
