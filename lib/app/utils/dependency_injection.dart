import 'package:app/app/data/providers/login_api.dart';
import 'package:app/app/data/repositories/login_repository.dart';
import 'package:app/app/utils/constants.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void init() {
    Get.lazyPut(() => Dio(BaseOptions(baseUrl: Constant.BASE_URL)));
    Get.lazyPut(() => LoginAPI());
    Get.lazyPut(() => LoginRepository());
  }
}
