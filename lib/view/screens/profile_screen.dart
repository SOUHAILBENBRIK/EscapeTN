import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kid_ask/utils/app_routes.dart';
import 'package:kid_ask/utils/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        actions: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey.withOpacity(0.1),
            child: Center(child: SvgPicture.asset("assets/icons/Edit.svg")),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SvgPicture.asset(
              "assets/icons/user.svg",
              height: Constants.getWidth(context) * 0.25,
              width: Constants.getWidth(context) * 0.25,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Souhail",
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text("benbriksouhail43@gmail.com",
                style: Theme.of(context).textTheme.titleMedium),
            SizedBox(
              height: Constants.getHeight(context) * 0.03,
            ),
            score(context),
            SizedBox(height: Constants.getHeight(context)*0.02,),
            listOfOptions(context)
          ],
        ),
      ),
    );
  }

  score(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Card(
          elevation: 0,
          color: Colors.white,
          shadowColor: Colors.grey.withOpacity(0.3),
          child: Container(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                scoreWidget(context, name: "Reward Points", score: 360),
                scoreWidget(context, name: "Travel Trips", score: 238),
                scoreWidget(context, name: "Bucket List", score: 452)
              ],
            ),
          )),
    );
  }

  Widget listOfOptions(BuildContext context) {
    return Column(
      children: [
        ButtonWidgetProfile(context,
            name: "Bookmarked",
            iconName: "assets/icons/bookmark.svg",
            path: AppRoutes.chatBootScreen),
        ButtonWidgetProfile(context,
            name: "Previous Trips",
            iconName: "assets/icons/trip.svg",
            path: AppRoutes.chatBootScreen),
        ButtonWidgetProfile(context,
            name: "Settings",
            iconName: "assets/icons/trip.svg",
            path: AppRoutes.chatBootScreen),
        ButtonWidgetProfile(context,
            name: "Version",
            iconName: "assets/icons/Version.svg",
            path: AppRoutes.chatBootScreen),
      ],
    );
  }

  scoreWidget(BuildContext context,
      {required String name, required int score}) {
    return Expanded(
      child: Column(
        children: [
          Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(score.toString(),
              style: TextStyle(
                  color: Constants.mainColor, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}

Widget ButtonWidgetProfile(BuildContext context,
    {required String name, required String iconName, required String path}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 5),
    child: Card(
      color: Colors.white,
      elevation: 0,
      shadowColor: Colors.white,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
        
        child: Row(
          children: [
            SvgPicture.asset(iconName),
            SizedBox(width: Constants.getWidth(context)*0.05,),
            Text(name,style:Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black,fontWeight: FontWeight.w600)),
            Spacer(),
            Icon(
            Icons.arrow_forward_ios,size: 15,
            color: Colors.black.withOpacity(0.4),
          ),
          SizedBox(width: 20,)
          ],
          
        ),
      ),
    ),
  );
}
