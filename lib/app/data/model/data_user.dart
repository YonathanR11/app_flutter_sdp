import 'dart:convert';

import 'package:meta/meta.dart';

class UserData {
  UserData({
    @required this.token,
    @required this.rol,
    @required this.idUsuario,
    @required this.usuario,
    @required this.partnerId,
    @required this.nombre,
    @required this.apellidoPaterno,
    @required this.apellidoMaterno,
    @required this.idPartnerTipo,
    @required this.nombrePartnerTipo,
    @required this.idSucursal,
    @required this.nombreSucursal,
    @required this.menuLateral,
    @required this.menuNavigationBar,
  });

  final String token;
  final String rol;
  final int idUsuario;
  final String usuario;
  final int partnerId;
  final String nombre;
  final String apellidoPaterno;
  final String apellidoMaterno;
  final int idPartnerTipo;
  final String nombrePartnerTipo;
  final int idSucursal;
  final String nombreSucursal;
  final List<MenuLateral> menuLateral;
  final List<MenuLateral> menuNavigationBar;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        token: json["token"],
        rol: json["rol"],
        idUsuario: json["idUsuario"],
        usuario: json["usuario"],
        partnerId: json["partnerId"],
        nombre: json["nombre"],
        apellidoPaterno: json["apellidoPaterno"],
        apellidoMaterno: json["apellidoMaterno"],
        idPartnerTipo: json["idPartnerTipo"],
        nombrePartnerTipo: json["nombrePartnerTipo"],
        idSucursal: json["idSucursal"],
        nombreSucursal: json["nombreSucursal"],
        menuLateral: List<MenuLateral>.from(
            json["menuLateral"].map((x) => MenuLateral.fromJson(x))),
        menuNavigationBar: List<MenuLateral>.from(
            json["menuNavigationBar"].map((x) => MenuLateral.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "rol": rol,
        "idUsuario": idUsuario,
        "usuario": usuario,
        "partnerId": partnerId,
        "nombre": nombre,
        "apellidoPaterno": apellidoPaterno,
        "apellidoMaterno": apellidoMaterno,
        "idPartnerTipo": idPartnerTipo,
        "nombrePartnerTipo": nombrePartnerTipo,
        "idSucursal": idSucursal,
        "nombreSucursal": nombreSucursal,
        "menuLateral": List<dynamic>.from(menuLateral.map((x) => x.toJson())),
        "menuNavigationBar":
            List<dynamic>.from(menuNavigationBar.map((x) => x.toJson())),
      };
}

class MenuLateral {
  MenuLateral({
    @required this.id,
    @required this.icono,
    @required this.titulo,
    @required this.url,
    @required this.niveles,
    @required this.prioridad,
    @required this.conSubservicios,
    @required this.visible,
    @required this.status,
    @required this.idMenuAppPadre,
    @required this.nodos,
  });

  final int id;
  final String icono;
  final String titulo;
  final String url;
  final int niveles;
  final int prioridad;
  final int conSubservicios;
  final int visible;
  final int status;
  final int idMenuAppPadre;
  final List<MenuLateral> nodos;

  factory MenuLateral.fromJson(Map<String, dynamic> json) => MenuLateral(
        id: json["id"],
        icono: json["icono"],
        titulo: json["titulo"],
        url: json["url"],
        niveles: json["niveles"],
        prioridad: json["prioridad"],
        conSubservicios: json["conSubservicios"],
        visible: json["visible"],
        status: json["status"],
        idMenuAppPadre: json["idMenuAppPadre"],
        nodos: json["nodos"] == null
            ? null
            : List<MenuLateral>.from(
                json["nodos"].map((x) => MenuLateral.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "icono": icono,
        "titulo": titulo,
        "url": url,
        "niveles": niveles,
        "prioridad": prioridad,
        "conSubservicios": conSubservicios,
        "visible": visible,
        "status": status,
        "idMenuAppPadre": idMenuAppPadre,
        "nodos": nodos == null
            ? null
            : List<dynamic>.from(nodos.map((x) => x.toJson())),
      };
}
