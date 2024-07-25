import 'package:flutter/material.dart';
import 'package:kid_ask/utils/app_routes.dart';
import 'package:kid_ask/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, AppRoutes.introScreen);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.mainColor,
      body: Container(
        height: Constants.getHeight(context),
        width: Constants.getWidth(context),
        alignment: Alignment.center,
        child: Text(
          Constants.appName,
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
