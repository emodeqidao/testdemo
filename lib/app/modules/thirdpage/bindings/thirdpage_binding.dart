import 'package:get/get.dart';

import '../controllers/thirdpage_controller.dart';

class ThirdpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThirdpageController>(
      () => ThirdpageController(),
    );
  }
}
