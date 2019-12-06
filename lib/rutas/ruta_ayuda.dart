import "package:flutter/material.dart";
import 'package:sarele_eat/modelos/modelo_ayuda.dart';
import 'package:sarele_eat/items/item_ayuda.dart';

class RutaAyuda extends StatelessWidget {
// Variable estática que se usa en main.dart (propiedad routes)
  static const nombreRuta = "/ayuda";
  @override
  
  List<ModeloAyuda> _construirAyuda() {
    return <ModeloAyuda>[
      ModeloAyuda(nombre: "Mi pedido llega tarde, ¿Qué hago?", subnombre:"imagenes/calendario.png" ),
      ModeloAyuda(
          nombre: "He duplicado el pedido por error", subnombre:"imagenes/duplicado_opt.jpg"),
      ModeloAyuda(
          nombre: "¿Cómo utilizo mi descuento?", subnombre:"imagenes/descuento_opt.png"),
      ModeloAyuda(nombre: "¿Cómo se utiliza SarEleEat?", subnombre:"imagenes/bombilla_opt.jpg"),
      ModeloAyuda(nombre: "Problema con mi pedido en curso", subnombre:"imagenes/error_opt.png"),
      ModeloAyuda(nombre: "No estoy contento con mi pedido", subnombre:"imagenes/descontento_opt.png"),
    ];
  }

  List<ItemAyuda> _construirLista() {
    return _construirAyuda()
        .map((pedido) => new ItemAyuda(pedido))
        .toList();
  }

  Widget build(BuildContext context) {
  return new Scaffold(
        appBar: new AppBar(
          title: new Text("Ayuda de la App"),
        ),
        body: new ListView(
             children: _construirLista(),
    ));
  }

  
}

