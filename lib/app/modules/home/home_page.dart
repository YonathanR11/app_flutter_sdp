import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (ctrl) => Scaffold(
        body: Column(
          children: [
            Center(
              child: Obx(
                () => Text('${ctrl.menu.value}'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
