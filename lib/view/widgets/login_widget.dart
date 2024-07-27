import 'package:flutter/material.dart';
import 'package:kid_ask/utils/constants.dart';
import 'package:kid_ask/view/widgets/input_form_widget.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Constants.getWidth(context),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InputFormWidget(
                controller: _emailController,
                inputType: TextInputType.emailAddress,
                isPassword: false,
                textInputAction: TextInputAction.next,
                hintText: "Email"),
            InputFormWidget(
                controller: _passwordController,
                inputType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                isPassword: true,
                hintText: "Password")
          ],
        ),
      ),
    );
  }
}
