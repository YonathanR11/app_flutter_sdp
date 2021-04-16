import 'dart:math';

import 'package:app/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  metodo() {
    var random = new Random().nextInt(100);
    print("Click $random: 🤠");
  }

  @override
  void onReady() {
    Future.delayed(Duration(seconds: 2), () {
      Get.toNamed(AppRoutes.LOGIN);
    });
  }
}
