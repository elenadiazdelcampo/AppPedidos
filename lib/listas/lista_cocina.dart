import "package:flutter/material.dart";
import 'package:sarele_eat/modelos/modelo_cocina.dart';
import 'package:sarele_eat/items/item_cocina.dart';


class ListaCocina extends StatelessWidget {

  static const nombreRuta = "/configuracion";

  List<ModeloCocina> _construirConfiguracion() {
    return <ModeloCocina>[
      ModeloCocina(nombre: "Mediterránea"),
      ModeloCocina(
          nombre: "Italiana"),
      ModeloCocina(
          nombre: "China"),
      ModeloCocina(nombre: "Mexicana"),
      ModeloCocina(nombre: "Japonesa"),
      ModeloCocina( nombre: "Turca"),
    ];
  }

  List<ItemCocina> _construirLista() {
    return _construirConfiguracion()
        .map((pedido) => new ItemCocina(pedido))
        .toList();
  }

  @override

  Widget build(BuildContext context) {
  return new Scaffold(
        appBar: new AppBar(
          title: new Text("Tipos de Cocina",  style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          
          backgroundColor: Colors.white,
        ),
        body: new ListView(
             children: _construirLista(),
    ));
  }

  
}