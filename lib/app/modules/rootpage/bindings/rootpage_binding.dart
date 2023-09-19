import 'package:get/get.dart';

import '../controllers/rootpage_controller.dart';

class RootpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootpageController>(
      () => RootpageController(),
    );
  }
}
