import 'package:app/app/routes/app_routes.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final _storage = FlutterSecureStorage();
  RxString menu = "".obs;
  RxString token = "".obs;
  RxString nombrePartner = "".obs;

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
    // String menu = prefs.getString("menuLateral");
    String menuPrefs = prefs.getString("menuNavigationBar");
    String nombrePartnerPrefs = prefs.getString("nombrePartner");
    String tokenSS = await _storage.read(key: "token");
    // print("menuPrefs: $menuPrefs");
    print("menuPrefs: $menuPrefs");
    print("tokenSS: $tokenSS");
    print("nombrePartnerPrefs: $nombrePartnerPrefs");
    menu.value = menuPrefs;
    token.value = tokenSS;
    nombrePartner.value = nombrePartnerPrefs;
  }
}
