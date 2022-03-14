import 'package:get/get.dart';

import '../../create/controllers/create_controller.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/bottom_navigation_bar_screen_controller.dart';

class BottomNavigationBarScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomNavigationBarScreenController>(
      () => BottomNavigationBarScreenController(),
    );
    Get.lazyPut<CreateController>(
      () => CreateController(),
    );
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
