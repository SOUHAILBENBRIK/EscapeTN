import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:kid_ask/utils/constants.dart';
import 'package:kid_ask/view/widgets/on_boarding_page.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> onBoardingPages = [
      OnBoardingPage(),
      OnBoardingPage(),
      OnBoardingPage()
    ];
    int index = 0;
    return Scaffold(
      body: Container(
        height: Constants.getWidth(context),
        width: Constants.getWidth(context),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Column(
          children: [onBoardingPages[index],
          DotsIndicator(
  dotsCount: 3,
  position: index,
  decorator: DotsDecorator(
    size: const Size.square(9.0),
    activeSize: const Size(18.0, 9.0),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
  ))

          ],
        ),
      ),
    );
  }
}
