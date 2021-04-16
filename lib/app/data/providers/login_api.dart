import 'package:app/app/data/model/data_user.dart';
import 'package:dio/dio.dart';
// import 'package:get/state_manager.dart';
import 'package:get/instance_manager.dart';
// import 'package:get/get.dart';

class LoginAPI {
  final Dio _dio = Get.find<Dio>();

  // LoginAPI(this._dio);

  Future<UserData> login(String usuario, String password) async {
    print("_usuario: $usuario");
    print("_password: $password");
    final Response response = await _dio.post('/login',
        data: {"usuario": usuario.trim(), "password": password.trim()});
    return UserData.fromJson(response.data);
  }
}
