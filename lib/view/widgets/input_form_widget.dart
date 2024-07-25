import 'package:flutter/material.dart';

class InputFormWidget extends StatelessWidget {
  const InputFormWidget(
      {super.key,
      required this.controller,
      required this.inputType,
      required this.isPassword,
      required this.hintText});
  final TextEditingController controller;
  final TextInputType inputType;
  final bool isPassword;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey,borderRadius:  BorderRadius.circular(25)),
      child: TextFormField(
        obscureText: isPassword,
        controller: controller,
        keyboardType: inputType,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          hintText: hintText,
        ),
      ),
    );
  }
}
