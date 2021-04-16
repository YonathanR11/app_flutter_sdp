import 'package:app/app/routes/app_routes.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final _storage = FlutterSecureStorage();

  @override
  void onReady() {
    Future.delayed(Duration(seconds: 2), () {
      verificarSesion();
    });
  }

  void verificarSesion() async {
    String token = await _storage.read(key: "token");
    if (token != null) {
      Get.offNamed(AppRoutes.HOME);
    } else {
      Get.offNamed(AppRoutes.LOGIN);
    }
  }
}
