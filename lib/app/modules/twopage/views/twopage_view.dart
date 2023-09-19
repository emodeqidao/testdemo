import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:testdemo/app/routes/app_pages.dart';

import '../controllers/twopage_controller.dart';

class TwopageView extends GetView<TwopageController> {
  const TwopageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TwopageView'),
        centerTitle: true,
        actions: [
          MaterialButton(
              child: Icon(Icons.next_plan_outlined, color: Colors.white,),
              onPressed: () {
                Get.toNamed(Routes.THIRDPAGE);
              })
        ],
      ),
      body: const Center(
        child: Text(
          'TwopageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
