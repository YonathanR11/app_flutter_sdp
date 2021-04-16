import 'package:app/app/data/model/data_user.dart';
import 'package:app/app/data/providers/login_api.dart';
import 'package:get/get.dart';

class LoginRepository {
  final LoginAPI _api = Get.find<LoginAPI>();

  // LoginRepository(this._api);

  Future<UserData> login(String usuario, String password) =>
      _api.login(usuario, password);
}
