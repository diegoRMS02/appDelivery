import 'package:ejemplo3/Screens/marina.dart';
import 'package:flutter/material.dart';
import "../Screens/inicio.dart";
import '../Screens/perfil.dart';
import '../Screens/platillos.dart';
import '../Screens/categorias.dart';

class AppRouters {
  static const rutaHome = "home";
  static Map<String, Widget Function(BuildContext)> routes = {
    "home": (BuildContext context) => Inicio(),
    "perfil": (BuildContext context) => Perfil(),
    "platillos": (BuildContext context) => const platillos(),
    "categorias": (BuildContext context) => Categorias(),
    "marina": (BuildContext context) => const Marina()
  };
}
