import 'package:get/get.dart';
import '../modules/BottomNavigationBarScreen/bindings/bottom_navigation_bar_screen_binding.dart';
import '../modules/BottomNavigationBarScreen/views/bottom_navigation_bar_screen_view.dart';
import '../modules/bar_graph/bindings/bar_graph_binding.dart';
import '../modules/bar_graph/views/bar_graph_view.dart';
import '../modules/create/bindings/create_binding.dart';
import '../modules/create/views/create_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOM_NAVIGATION_BAR_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BAR_GRAPH,
      page: () => BarGraphView(),
      binding: BarGraphBinding(),
    ),
    GetPage(
      name: _Paths.CREATE,
      page: () => CreateView(),
      binding: CreateBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVIGATION_BAR_SCREEN,
      page: () => BottomNavigationBarScreenView(),
      binding: BottomNavigationBarScreenBinding(),
    ),
  ];
}
