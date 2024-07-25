import 'package:flutter/material.dart';
import 'package:kid_ask/utils/constants.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key, required this.imagePath, required this.text});
  final String imagePath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [Image.asset(imagePath,width: Constants.getWidth(context),fit: BoxFit.cover,)],
    ));
  }
}
