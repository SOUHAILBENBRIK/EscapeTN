import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:kid_ask/controller/global_controller.dart';
import 'package:kid_ask/utils/constants.dart';
import 'package:kid_ask/view/screens/calandar_screen.dart';
import 'package:kid_ask/view/screens/chat_boot_screen.dart';
import 'package:kid_ask/view/screens/home_screen.dart';
import 'package:kid_ask/view/screens/profile_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalController globalController = Get.put(GlobalController());
    const List widgets = [
      HomeScreen(),
      CalandarScreen(),
      ChatBootScreen(),
      ChatBootScreen(),
      ProfileScreen()
    ];
    return Scaffold(
      body: GetBuilder<GlobalController>(
        builder: (_) {
          return Scaffold(
            body: widgets[globalController.mainIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: globalController.mainIndex,
              selectedItemColor: Constants.mainColor,
              selectedIconTheme: const IconThemeData(color: Constants.mainColor),
              selectedLabelStyle: const TextStyle(color: Constants.mainColor),
              unselectedLabelStyle:
                  TextStyle(color: Colors.grey.withOpacity(0.5)),
              onTap: globalController.changeIndex,
              items: [
                BottomNavigationBarItem(
                    activeIcon: SvgPicture.asset("assets/icons/home.svg",color: Constants.mainColor,),
                    icon: SvgPicture.asset("assets/icons/home.svg"),
                    label: 'Home'),
                BottomNavigationBarItem(
                    activeIcon: SvgPicture.asset("assets/icons/Calendar.svg",color: Constants.mainColor,),
                    icon: SvgPicture.asset("assets/icons/Calendar.svg"),
                    label: 'calendar'),
                BottomNavigationBarItem(
                  label: '',
                  icon: CircleAvatar(
                  radius: 30,
                  backgroundColor: Constants.mainColor,
                  child: Icon(Icons.search,color: Colors.white,size: 35,),
                )),
                BottomNavigationBarItem(
                    activeIcon: SvgPicture.asset("assets/icons/Caht.svg",color: Constants.mainColor,),
                    icon: SvgPicture.asset("assets/icons/Caht.svg"),
                    label: 'Messages'),
                BottomNavigationBarItem(
                    activeIcon: SvgPicture.asset("assets/icons/Icon.svg",color: Constants.mainColor,),
                    icon: SvgPicture.asset("assets/icons/Icon.svg"),
                    label: 'Profile'),
              ],
            ),
          );
        },
      ),
    );
  }
}
