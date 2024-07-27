import 'package:flutter/material.dart';
import 'package:kid_ask/utils/constants.dart';

class InputFormWidget extends StatelessWidget {
  const InputFormWidget(
      {super.key,
      required this.controller,
      required this.inputType,
      required this.isPassword,
      required this.hintText,
      required this.textInputAction});
  final TextEditingController controller;
  final TextInputType inputType;
  final bool isPassword;
  final String hintText;
  final TextInputAction textInputAction;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15)),
      width: Constants.getWidth(context) * 0.9,
      child: TextFormField(
        cursorColor: Colors.black12,
        textInputAction: textInputAction,
        obscureText: isPassword,
        controller: controller,
        keyboardType: inputType,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15)),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black)
        ),
      ),
    );
  }
}
