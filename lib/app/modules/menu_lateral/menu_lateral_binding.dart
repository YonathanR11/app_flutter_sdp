import 'package:get/get.dart';

import 'menu_lateral_controller.dart';

class MenuLateralBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenuLateralController());
  }
}
