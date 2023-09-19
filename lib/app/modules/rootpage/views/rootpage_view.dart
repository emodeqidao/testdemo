// ignore_for_file: prefer_const_constructors
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:testdemo/app/routes/app_pages.dart';

import '../controllers/rootpage_controller.dart';

class RootpageView extends GetView<RootpageController> {
  const RootpageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RootpageView'),
        centerTitle: true,
        actions: [
          MaterialButton(
              child: Icon(Icons.confirmation_num_sharp, color: Colors.white,),
              onPressed: () {
                controller.dataSource.clear();
              }),

          MaterialButton(
              child: Icon(Icons.next_plan_outlined, color: Colors.white,),
              onPressed: () {
                Get.toNamed(Routes.TWOPAGE);
              })
        ],
      ),
      body: EasyRefresh.builder(
          controller: controller.refreshController,
          fit: StackFit.expand,
          onRefresh: () {
            controller.refresh();
          },
          refreshOnStart: true,
          childBuilder: (BuildContext context, ScrollPhysics physics) {
            return Obx(() {
              return ListView.builder(
                  itemCount: controller.dataSource.length,
                  physics: physics,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Text('${index}', textAlign: TextAlign.center,),
                      ],
                    );
                  });
            });
          }),
    );
  }
}
