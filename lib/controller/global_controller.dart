import 'package:get/get.dart';

class GlobalController extends GetxController {
  var introIndex = 0;

  void increment() {
    introIndex++;
    update();
    print(introIndex);
  }
}
