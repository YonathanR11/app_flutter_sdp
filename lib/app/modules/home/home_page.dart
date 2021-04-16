import 'package:app/app/data/model/data_user.dart';
import 'package:app/app/modules/menu_lateral/menu_lateral_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (ctrl) => Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: MenuLateralPage(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Home'),
            ),
          ],
        ),
      ),
    );
  }
}
