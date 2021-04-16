import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final _storage = FlutterSecureStorage();
  RxString menu = "".obs;
  RxString token = "".obs;

  @override
  void onReady() {
    _init();
  }

  _init() async {
    final SharedPreferences prefs = await _prefs;
    // String menu = prefs.getString("menuLateral");
    String menuPrefs = prefs.getString("menuNavigationBar");
    String tokenSS = await _storage.read(key: "token");
    // print("menuPrefs: $menuPrefs");
    print("menuPrefs: $menuPrefs");
    print("tokenSS: $tokenSS");
    menu.value = menuPrefs;
    token.value = tokenSS;
  }
}
