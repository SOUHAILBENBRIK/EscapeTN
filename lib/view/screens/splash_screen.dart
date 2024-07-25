import 'package:flutter/material.dart';
import 'package:kid_ask/utils/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.mainColor,
      body: Container(
        height: Constants.getHeight(context),
        width: Constants.getWidth(context),
        alignment: Alignment.center,
        child: Text(Constants.appName,style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.white),),
      ),
    );
  }
}
