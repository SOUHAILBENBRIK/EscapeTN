import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kid_ask/utils/constants.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget(
      {super.key,
      required this.iconPath,
      required this.title,
      required this.description});
  final String iconPath;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(),
        SvgPicture.asset(iconPath,width: 80,height: 80,),
        const Spacer(),
        Text(title,style: Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 30),),
        const SizedBox(height: 10,),
        Center(child: Text(description,style: Theme.of(context).textTheme.bodyLarge,textAlign: TextAlign.center,)),
        const Spacer(),
      ],
    );
  }
}
