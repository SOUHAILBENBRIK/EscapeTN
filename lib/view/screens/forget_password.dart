import 'package:flutter/material.dart';
import 'package:kid_ask/utils/constants.dart';
import 'package:kid_ask/view/widgets/back_button.dart';
import 'package:kid_ask/view/widgets/input_form_widget.dart';
import 'package:kid_ask/view/widgets/main_button.dart';
import 'package:kid_ask/view/widgets/message_widget.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  late TextEditingController _passwordController;

  @override
  void initState() {
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButtonWidget(
          onPress: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: Constants.getWidth(context),
          child: Column(
            children: [
              Text(
                "Forget password",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Enter your email account to reset  your password"),
              SizedBox(
                height: Constants.getHeight(context) * 0.04,
              ),
              InputFormWidget(
                controller: _passwordController,
                hintText: "Enter  Your Email",
                textInputAction: TextInputAction.done,
                inputType: TextInputType.emailAddress,
                isPassword: false,
              ),
              SizedBox(
                height: Constants.getHeight(context) * 0.05,
              ),
              MainButton(
                  onPress: () {
                    
                    showDialog(
                        barrierColor: Colors.grey.withOpacity(0.1),
                        context: context,
                        builder: (context) {
                          return   Dialog(
                            backgroundColor: Colors.transparent,
                            child: Container(
                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                              width: Constants.getWidth(context),
                              height: Constants.getHeight(context)*0.3,
                              child: MessageWidget(
                                  iconPath: "assets/icons/email.svg",
                                  title: "Check your email",
                                  description: "We have send password recovery instruction to your email"),
                            ),
                          );
                        });
                  },
                  text: "Reset Password"),
              SizedBox(
                height: Constants.getHeight(context) * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
