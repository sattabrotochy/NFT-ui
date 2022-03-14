import 'package:get/get.dart';

import '../controllers/bar_graph_controller.dart';

class BarGraphBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BarGraphController>(
      () => BarGraphController(),
    );
  }
}
