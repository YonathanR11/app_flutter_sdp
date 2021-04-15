import 'dart:math';

import 'package:get/state_manager.dart';

class SplashController extends GetxController {
  metodo() {
    var random = new Random().nextInt(100);
    print("Click $random: 🤠");
  }
}
