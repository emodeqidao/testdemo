import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:testdemo/app/routes/app_pages.dart';

import '../controllers/thirdpage_controller.dart';

class ThirdpageView extends GetView<ThirdpageController> {
  const ThirdpageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ThirdpageView'),
        centerTitle: true,
      ),
      body: Center(
        child: MaterialButton(onPressed: () {
          Get.offAllNamed(Routes.ROOTPAGE);
        }, child: Text('删除全部重新回到第一个页面'),)
      ),
    );
  }
}
