import 'package:get/get.dart';

class GlobalController extends GetxController {
  var introIndex = 0;
  var mainIndex = 0;
  void changeIndex(int index) {
    mainIndex = index;
    update();
  }

  void increment() {
    introIndex++;
    update();
  }
}
