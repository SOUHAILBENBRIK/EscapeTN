import 'package:flutter/material.dart';
import 'package:kid_ask/utils/constants.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({super.key, required this.onPress, required this.text});
  final Function() onPress;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: Constants.getHeight(context)*0.015,horizontal: 5),
        decoration: BoxDecoration(
          color: Constants.mainColor,
          borderRadius: BorderRadius.circular(15)
        ),
        width: Constants.getWidth(context) * 0.93,
        alignment: Alignment.center,
        child: Text(text,style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),),
      ),
    );
  }
}
