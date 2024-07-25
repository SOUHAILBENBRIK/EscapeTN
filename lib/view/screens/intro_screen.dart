import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kid_ask/controller/global_controller.dart';
import 'package:kid_ask/utils/app_routes.dart';
import 'package:kid_ask/utils/constants.dart';
import 'package:kid_ask/view/widgets/intro_button.dart';
import 'package:kid_ask/view/widgets/on_boarding_page.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalController globalController = Get.put(GlobalController());
    return Scaffold(
      body: SizedBox(
        height: Constants.getHeight(context),
        width: Constants.getWidth(context),
        child: GetBuilder<GlobalController>(builder: (_) {
          return Column(
            children: [
              Constants.onBoardingPages[globalController.introIndex],
              Spacer(),
              DotsIndicator(
                  dotsCount: 3,
                  position: globalController.introIndex,
                  decorator: DotsDecorator(
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  )),
              Spacer(),
              OnBoardingButton(
                onPress: () {
                  if (globalController.introIndex == 2) {
                    Navigator.pushReplacementNamed(
                        context, AppRoutes.spalshScreen);
                  } else {
                    globalController.increment();
                  }
                },
                text: globalController.introIndex == 0 ? "Get Started" : "Next",
              ),
              SizedBox(
                height: Constants.getHeight(context) * 0.015,
              )
            ],
          );
        }),
      ),
    );
  }
}
