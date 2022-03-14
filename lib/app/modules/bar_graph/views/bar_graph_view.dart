// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bar_graph_controller.dart';

class BarGraphView extends GetView<BarGraphController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BarGraphView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BarGraphView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
