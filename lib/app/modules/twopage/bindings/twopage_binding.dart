import 'package:get/get.dart';

import '../controllers/twopage_controller.dart';

class TwopageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TwopageController>(
      () => TwopageController(),
    );
  }
}
