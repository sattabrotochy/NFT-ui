// ignore_for_file: unused_field, unnecessary_overrides, unused_element

import 'package:get/get.dart';

class BottomNavigationBarScreenController extends GetxController {
  final count = 0.obs;
  int selectedIndex = 0;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

   onItemTapped(int index) {
    selectedIndex = index;
    update();
  }
}
