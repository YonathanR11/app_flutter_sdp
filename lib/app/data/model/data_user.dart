// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

class Welcome {
  Welcome({
    @required this.token,
    @required this.error,
    @required this.rol,
    @required this.usuario,
    @required this.partner,
    @required this.partnerTipo,
    @required this.sucursal,
    @required this.empresa,
    @required this.corporativo,
    @required this.roles,
    @required this.menuLateral,
    @required this.menuNavigationBar,
  });

  String token;
  bool error;
  String rol;
  Usuario usuario;
  Partner partner;
  PartnerTipo partnerTipo;
  Corporativo sucursal;
  Empresa empresa;
  Corporativo corporativo;
  List<Role> roles;
  List<MenuLateral> menuLateral;
  List<MenuNavigationBar> menuNavigationBar;

  factory Welcome.fromRawJson(String str) => Welcome.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        token: json["token"],
        error: json["error"],
        rol: json["rol"],
        usuario: Usuario.fromJson(json["usuario"]),
        partner: Partner.fromJson(json["partner"]),
        partnerTipo: PartnerTipo.fromJson(json["partnerTipo"]),
        sucursal: Corporativo.fromJson(json["sucursal"]),
        empresa: Empresa.fromJson(json["empresa"]),
        corporativo: Corporativo.fromJson(json["corporativo"]),
        roles: List<Role>.from(json["roles"].map((x) => Role.fromJson(x))),
        menuLateral: List<MenuLateral>.from(
            json["menuLateral"].map((x) => MenuLateral.fromJson(x))),
        menuNavigationBar: List<MenuNavigationBar>.from(
            json["menuNavigationBar"]
                .map((x) => MenuNavigationBar.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "error": error,
        "rol": rol,
        "usuario": usuario.toJson(),
        "partner": partner.toJson(),
        "partnerTipo": partnerTipo.toJson(),
        "sucursal": sucursal.toJson(),
        "empresa": empresa.toJson(),
        "corporativo": corporativo.toJson(),
        "roles": List<dynamic>.from(roles.map((x) => x.toJson())),
        "menuLateral": List<dynamic>.from(menuLateral.map((x) => x.toJson())),
        "menuNavigationBar":
            List<dynamic>.from(menuNavigationBar.map((x) => x.toJson())),
      };
}

class Corporativo {
  Corporativo({
    @required this.id,
    @required this.nombre,
  });

  int id;
  String nombre;

  factory Corporativo.fromRawJson(String str) =>
      Corporativo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Corporativo.fromJson(Map<String, dynamic> json) => Corporativo(
        id: json["id"],
        nombre: json["nombre"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
      };
}

class Empresa {
  Empresa({
    @required this.id,
    @required this.razonSocial,
    @required this.rfc,
  });

  int id;
  String razonSocial;
  String rfc;

  factory Empresa.fromRawJson(String str) => Empresa.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Empresa.fromJson(Map<String, dynamic> json) => Empresa(
        id: json["id"],
        razonSocial: json["razonSocial"],
        rfc: json["rfc"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "razonSocial": razonSocial,
        "rfc": rfc,
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
    @required this.nodos,
  });

  int id;
  String icono;
  String titulo;
  String url;
  int niveles;
  int prioridad;
  int conSubservicios;
  int visible;
  int status;
  List<MenuNavigationBar> nodos;

  factory MenuLateral.fromRawJson(String str) =>
      MenuLateral.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

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
        nodos: List<MenuNavigationBar>.from(
            json["nodos"].map((x) => MenuNavigationBar.fromJson(x))),
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
        "nodos": List<dynamic>.from(nodos.map((x) => x.toJson())),
      };
}

class MenuNavigationBar {
  MenuNavigationBar({
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
  });

  int id;
  String icono;
  String titulo;
  String url;
  int niveles;
  int prioridad;
  int conSubservicios;
  int visible;
  int status;
  int idMenuAppPadre;

  factory MenuNavigationBar.fromRawJson(String str) =>
      MenuNavigationBar.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MenuNavigationBar.fromJson(Map<String, dynamic> json) =>
      MenuNavigationBar(
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
      };
}

class Partner {
  Partner({
    @required this.partnerId,
    @required this.nombre,
    @required this.apellidoPaterno,
    @required this.apellidoMaterno,
  });

  int partnerId;
  String nombre;
  String apellidoPaterno;
  String apellidoMaterno;

  factory Partner.fromRawJson(String str) => Partner.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Partner.fromJson(Map<String, dynamic> json) => Partner(
        partnerId: json["partnerId"],
        nombre: json["nombre"],
        apellidoPaterno: json["apellidoPaterno"],
        apellidoMaterno: json["apellidoMaterno"],
      );

  Map<String, dynamic> toJson() => {
        "partnerId": partnerId,
        "nombre": nombre,
        "apellidoPaterno": apellidoPaterno,
        "apellidoMaterno": apellidoMaterno,
      };
}

class PartnerTipo {
  PartnerTipo({
    @required this.id,
    @required this.nombre,
    @required this.auxiliarMensaje,
  });

  int id;
  String nombre;
  String auxiliarMensaje;

  factory PartnerTipo.fromRawJson(String str) =>
      PartnerTipo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PartnerTipo.fromJson(Map<String, dynamic> json) => PartnerTipo(
        id: json["id"],
        nombre: json["nombre"],
        auxiliarMensaje: json["auxiliarMensaje"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "auxiliarMensaje": auxiliarMensaje,
      };
}

class Role {
  Role({
    @required this.idRol,
    @required this.nombre,
  });

  int idRol;
  String nombre;

  factory Role.fromRawJson(String str) => Role.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        idRol: json["idRol"],
        nombre: json["nombre"],
      );

  Map<String, dynamic> toJson() => {
        "idRol": idRol,
        "nombre": nombre,
      };
}

class Usuario {
  Usuario({
    @required this.idUsuario,
    @required this.usuario,
  });

  int idUsuario;
  String usuario;

  factory Usuario.fromRawJson(String str) => Usuario.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Usuario.fromJson(Map<String, dynamic> json) => Usuario(
        idUsuario: json["idUsuario"],
        usuario: json["usuario"],
      );

  Map<String, dynamic> toJson() => {
        "idUsuario": idUsuario,
        "usuario": usuario,
      };
}
