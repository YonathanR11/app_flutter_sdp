import 'package:get/get.dart';

import 'login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    // final api = LoginAPI();
    // final repository = LoginRepository();
    Get.lazyPut(() => LoginController());
  }
}
