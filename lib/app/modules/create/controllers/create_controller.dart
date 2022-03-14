// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

import '../../bar_graph/views/bar_graph_view.dart';
import '../../home/views/home_view.dart';
import '../../profile/views/profile_view.dart';
import '../views/create_view.dart';

class CreateController extends GetxController {
 

  final count = 0.obs;
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

  final screen = [
    HomeView(),
    BarGraphView(),
    CreateView(),
    ProfileView(),
  ];
}
