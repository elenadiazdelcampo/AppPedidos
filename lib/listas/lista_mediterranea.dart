import "package:flutter/material.dart";
import 'package:sarele_eat/modelos/modelo_mexicano.dart';
import 'package:sarele_eat/items/item_mexicano.dart';

class ListaMediterranea extends StatelessWidget{
static const nombreRuta = "/mediterranea";

  List<ModeloMexicano>_construirRestaurantes(){
    
      return <ModeloMexicano>[
        ModeloMexicano(
          nombre: "Fricandó",
          tipoComida: "Mediterránea",
          imagenRestaurante: "imagenes/fricando.jpg",
          pedidoMin: "11€",
          gastos: "Gratis"),
        ModeloMexicano(
          nombre: "A Sirigaita",
           tipoComida: "Mediterránea",
          imagenRestaurante: "imagenes/sirigaita.jpg",
          pedidoMin: "10€",
          gastos: "2€"),
        ModeloMexicano(
          nombre: "d'Brasas",
          tipoComida: "Mediterránea",
          imagenRestaurante: "imagenes/brasas.jpg",
          pedidoMin: "10€",
          gastos: "2€"),
          ModeloMexicano(
          nombre: "La Caleta",
          tipoComida: "Mediterránea",
          imagenRestaurante: "imagenes/caleta.jpg",
          pedidoMin: "10€",
          gastos: "Gratis"),
      ];
  }

List<ItemRestaurante> _construirLista(){
  return _construirRestaurantes().map(
    (restaurant) => new ItemRestaurante(restaurant)
  ).toList();
 }

Widget build(BuildContext context) {
  return new Scaffold(
        appBar: new AppBar(
          title: new Text("Restaurantes Mediterráneos"),
        ),
        body: new ListView(
             children: _construirLista(),
    ));
  }

}