import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kid_ask/utils/constants.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage(
      {super.key,
      required this.imagePath,
      required this.text,
      required this.title,
      required this.lastWord});
  final String imagePath;
  final String text;
  final String title;
  final String lastWord;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Constants.getWidth(context),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            fit: BoxFit.fitWidth,
            width: Constants.getWidth(context),
          ),
          SizedBox(height: Constants.getHeight(context)*0.025,),
          Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              alignment: Alignment.center,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: title,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.w500, fontSize: 35),
                    children: [
                      TextSpan(
                        text: lastWord,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 35,
                                color: Constants.orangeColor),
                      )
                    ]),
              )),
          Container(
              margin: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: Constants.getHeight(context) * 0.01),
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.grey, fontSize: 17,fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ))
        ],
      ),
    );
  }
}
