import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      builder: (ctrl) => Scaffold(),
    );
  }
}
