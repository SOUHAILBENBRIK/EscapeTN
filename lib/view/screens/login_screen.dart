import 'package:flutter/material.dart';
import 'package:kid_ask/utils/app_routes.dart';
import 'package:kid_ask/utils/constants.dart';
import 'package:kid_ask/view/widgets/google_button.dart';
import 'package:kid_ask/view/widgets/main_button.dart';
import 'package:kid_ask/view/widgets/login_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Sign in now",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Please sign in to continue our app"),
            SizedBox(
              height: Constants.getHeight(context) * 0.04,
            ),
            const LoginWidget(),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.forgetPasswordScreen);
              },
              child: Container(
                  margin: EdgeInsets.only(
                      right: Constants.getWidth(context) * 0.07),
                  alignment: Alignment.topRight,
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(
                        color: Constants.mainColor,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(
              height: Constants.getHeight(context) * 0.05,
            ),
            MainButton(
                onPress: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.mainScreen);
                },
                text: "Sign In"),
            SizedBox(
              height: Constants.getHeight(context) * 0.04,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, AppRoutes.signUpScreen);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account?"),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(
                        color: Constants.mainColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Constants.getHeight(context) * 0.03,
            ),
            const Text("Or connnect"),
            SizedBox(
              height: Constants.getHeight(context) * 0.03,
            ),
            const GoogleButton()
          ],
        ),
      ),
    );
  }
}
