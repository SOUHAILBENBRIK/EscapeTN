import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kid_ask/utils/app_routes.dart';
import 'package:kid_ask/utils/constants.dart';
import 'package:kid_ask/view/widgets/back_button.dart';
import 'package:kid_ask/view/widgets/google_button.dart';
import 'package:kid_ask/view/widgets/main_button.dart';
import 'package:kid_ask/view/widgets/sign_up_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButtonWidget(
          onPress: () =>
              Navigator.pushReplacementNamed(context, AppRoutes.loginScreen),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Sign Up now",
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Please fill the details and create account"),
            SizedBox(
              height: Constants.getHeight(context) * 0.04,
            ),
            const SignUpWidget(),
            Container(
                margin:
                    EdgeInsets.only(left: Constants.getWidth(context) * 0.07),
                alignment: Alignment.topLeft,
                child: const Text("Password must be 8 character")),
            SizedBox(
              height: Constants.getHeight(context) * 0.05,
            ),
            MainButton(onPress: () {}, text: "Sign Up"),
            SizedBox(
              height: Constants.getHeight(context) * 0.04,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, AppRoutes.loginScreen);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Sign In",
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
            Text("Or connnect"),
            SizedBox(
              height: Constants.getHeight(context) * 0.03,
            ),
            GoogleButton()
          ],
        ),
      ),
    );
  }
}
