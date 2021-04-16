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
        drawer: Drawer(
          child: Container(
            // decoration: BoxDecoration(color: Color(0xFF0098c2)),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Column(children: <Widget>[
                    DrawerHeader(
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  'https://blog.sebastiano.dev/content/images/2019/07/1_l3wujEgEKOecwVzf_dqVrQ.jpeg'))),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 12.0,
                            left: 16.0,
                            child: Obx(
                              () => Text(
                                "${ctrl.nombrePartner.value}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.group_add_sharp,
                        color: Colors.black,
                      ),
                      title: Text('Pase de lista',
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.w800)),
                      onTap: () {
                        Get.back();
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.photo_camera_outlined,
                          color: Colors.black),
                      title: Text(
                        'Capturar foto de alumno',
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ]),
                ),
                Container(
                    child: Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Column(
                          children: <Widget>[
                            Divider(),
                            ListTile(
                                onTap: ctrl.cerrarSesion,
                                leading: Icon(Icons.exit_to_app_outlined,
                                    color: Colors.black),
                                title: Text('Cerrar Sesión')),
                          ],
                        ))),
              ],
            ),
          ),
        ),
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
