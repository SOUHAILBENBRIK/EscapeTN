// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    Key? key,
    required this.onPress,
  }) : super(key: key);
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.grey.withOpacity(0.5),
        child: Icon(Icons.arrow_back_ios,color: Colors.black,),
      ),
    );
  }
}
