import 'package:get/get.dart';
import 'package:kid_ask/controller/global_controller.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GlobalController>(() => GlobalController());
  }
}
