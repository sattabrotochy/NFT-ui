// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../constant.dart';
import '../../bar_graph/views/bar_graph_view.dart';
import '../../create/views/create_view.dart';
import '../../home/views/home_view.dart';
import '../../profile/views/profile_view.dart';
import '../controllers/bottom_navigation_bar_screen_controller.dart';

class BottomNavigationBarScreenView
    extends GetView<BottomNavigationBarScreenController> {
  final screen = [
    HomeView(),
    BarGraphView(),
    CreateView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavigationBarScreenController>(
        builder: (controller) {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.graph_square),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.create),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
          currentIndex: controller.selectedIndex,
          selectedItemColor: kPrimaryColor,
          onTap: controller.onItemTapped,
        ),
        body: SafeArea(
          child: StreamBuilder<Object>(
              stream: null,
              builder: (context, snapshot) {
                return screen[controller.selectedIndex];
              }),
        ),
      );
    });
  }
}
