import 'dart:io';

import 'package:easy_refresh/easy_refresh.dart';
import 'package:get/get.dart';

class RootpageController extends GetxController {
  //TODO: Implement RootpageController

  EasyRefreshController refreshController = EasyRefreshController(controlFinishRefresh: true);
  var dataSource = [].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    // Future.delayed(const Duration(milliseconds: 400), () {
    //   refreshController.callRefresh();
    // });
  }

  @override
  void onClose() {
    super.onClose();
    refreshController.dispose();
  }

  Future<void> refresh() async {
    for (int i = 0; i < 5; i++) {
      dataSource.add(i);
    }

    // sleep(Duration(seconds: 2));
    refreshController.finishRefresh();
  }

}
