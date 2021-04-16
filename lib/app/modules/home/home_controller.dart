import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  RxString menu = "".obs;

  @override
  void onReady() {
    _init();
  }

  _init() async {
    final SharedPreferences prefs = await _prefs;
    // String menu = prefs.getString("menuLateral");
    String menuPrefs = prefs.getString("menuNavigationBar");
    // print("menuPrefs: $menuPrefs");
    print("menuPrefs: $menuPrefs");
    menu.value = menuPrefs;
  }
}
