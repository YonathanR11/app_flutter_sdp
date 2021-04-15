import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
        builder: (ctrl) => Scaffold(
              body: Center(
                child: TextButton(
                    onPressed: () {
                      ctrl.metodo();
                    },
                    child: Text("PRINT"),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue))),
              ),
            ));
  }
}
