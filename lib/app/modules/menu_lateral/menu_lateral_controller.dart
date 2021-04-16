import 'dart:convert';

import 'package:app/app/data/model/data_user.dart';
import 'package:app/app/routes/app_routes.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MenuLateralController extends GetxController {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final _storage = FlutterSecureStorage();
  RxString nombrePartner = "".obs;
  List<dynamic> menu = [].obs;

  @override
  void onReady() {
    _init();
  }

  void cerrarSesion() async {
    final SharedPreferences prefs = await _prefs;
    prefs.clear();
    await _storage.deleteAll();
    Get.offAllNamed(AppRoutes.SPLASH);
  }

  _init() async {
    final SharedPreferences prefs = await _prefs;
    String nombrePartnerPrefs = prefs.getString("nombrePartner");
    nombrePartner.value = nombrePartnerPrefs;
    String menuLateralJSON = prefs.getString("menuLateral");
    var menuLateralMap = json.decode(menuLateralJSON);
    // menu = [].obs;

    for (var item in menuLateralMap) {
      MenuLateral menuLateral = MenuLateral.fromJson(item);
      menu.add(menuLateral);
      print("E");
    }
  }
}
