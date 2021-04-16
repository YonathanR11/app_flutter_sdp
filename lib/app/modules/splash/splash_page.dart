import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        builder: (ctrl) => Scaffold(
              backgroundColor: Colors.white,
              body: Center(
                  child: Image.asset("lib/app/assets/images/flutter_dev.png")),
            ));
  }
}
