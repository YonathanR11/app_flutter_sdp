import 'dart:convert';

import 'package:app/app/data/model/data_user.dart';
import 'package:app/app/data/repositories/login_repository.dart';
import 'package:app/app/routes/app_routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  final LoginRepository _repository = Get.find<LoginRepository>();
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  final _storage = FlutterSecureStorage();

  String _usuario;
  String _password;

  void changeUsuario(String txt) => _usuario = txt;
  void changePassword(String txt) => _password = txt;

  login() async {
    try {
      UserData userData =
          await _repository.login(this._usuario, this._password);

      final SharedPreferences prefs = await _prefs;
      prefs.setString("nombrePartner",
          "${userData.nombrePartner} ${userData.apellidoPaternoPartner} ${userData.apellidoMaternoPartner}");
      prefs.setString("menuLateral", json.encode(userData.menuLateral));
      prefs.setString(
          "menuNavigationBar", json.encode(userData.menuNavigationBar));

      await _storage.write(key: "token", value: userData.token);

      Get.offNamed(AppRoutes.HOME);
    } on DioError catch (e) {
      print("statusCode: ${e.response.statusCode}");
      if (e.response.statusCode == 400) {
        print("IF");
        print("data: ${e.response.data}");
        Get.defaultDialog(
            title: "Error",
            content: Text("${e.response.data['mensaje']}"),
            confirm: TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("OK")));
      }
    }
  }
}
