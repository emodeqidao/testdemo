import 'package:get/get.dart';

import '../modules/rootpage/bindings/rootpage_binding.dart';
import '../modules/rootpage/views/rootpage_view.dart';
import '../modules/thirdpage/bindings/thirdpage_binding.dart';
import '../modules/thirdpage/views/thirdpage_view.dart';
import '../modules/twopage/bindings/twopage_binding.dart';
import '../modules/twopage/views/twopage_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ROOTPAGE;

  static final routes = [
    GetPage(
      name: _Paths.TWOPAGE,
      page: () => const TwopageView(),
      binding: TwopageBinding(),
    ),
    GetPage(
      name: _Paths.ROOTPAGE,
      page: () => const RootpageView(),
      binding: RootpageBinding(),
    ),
    GetPage(
      name: _Paths.THIRDPAGE,
      page: () => const ThirdpageView(),
      binding: ThirdpageBinding(),
    ),
  ];
}
