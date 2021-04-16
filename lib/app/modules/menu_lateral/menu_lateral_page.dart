import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import 'menu_lateral_controller.dart';

class MenuLateralPage extends StatelessWidget {
  const MenuLateralPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = Get.put(MenuLateralController());
    return Drawer(
      child: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  DrawerHeader(
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image:
                            AssetImage("lib/app/assets/images/flutter_dev.png"),
                        // image: NetworkImage(
                        //     'https://blog.sebastiano.dev/content/images/2019/07/1_l3wujEgEKOecwVzf_dqVrQ.jpeg'),
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          bottom: 0.0,
                          left: 16.0,
                          child: Obx(
                            () => Text(
                              "${ctrl.nombrePartner.value}",
                              style: TextStyle(
                                color: Colors.amber[900],
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Obx(
                    () => ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: ctrl.menu.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(ctrl.menu[index].titulo),
                            leading: Icon(IconData(
                                int.parse(ctrl.menu[index].icono),
                                fontFamily: 'MaterialIcons')),
                            trailing: Icon(Icons.chevron_right),
                            onTap: () {
                              Get.back();
                            },
                          );
                        }),
                  ),
                ],
              ),
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
