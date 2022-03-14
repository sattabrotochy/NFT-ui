// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/create_controller.dart';

class CreateView extends GetView<CreateController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CreateView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CreateView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
