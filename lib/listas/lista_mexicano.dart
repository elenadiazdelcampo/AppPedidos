import "package:flutter/material.dart";
import 'package:sarele_eat/modelos/modelo_mexicano.dart';
import 'package:sarele_eat/items/item_mexicano.dart';


class ListaMexicana extends StatelessWidget{
 static const nombreRuta = "/mexicana";

  List<ModeloMexicano> _construirRestaurantes(){
      return <ModeloMexicano>[
        ModeloMexicano(
          nombre: "Taco Bell",
          tipoComida: "Mexicana",
          imagenRestaurante: "imagenes/taco.jpg",
          pedidoMin: "10€",
          gastos: "2€"),
        ModeloMexicano(
          nombre: "Del Taco",
          tipoComida: "Mexicana",
          imagenRestaurante: "imagenes/delTaco.png",
          pedidoMin: "11.50€",
          gastos: "3€"),
        ModeloMexicano(
          nombre: "Cantina",
          tipoComida: "Mexicana",
          imagenRestaurante: "imagenes/cantina.jpg",
          pedidoMin: "10€",
          gastos: "1.50€"),
        ModeloMexicano(
          nombre: "Taco John's",
          tipoComida: "Mexicana",
          imagenRestaurante: "imagenes/tacoJohns.jpg",
          pedidoMin: "10€",
          gastos: "3€"),
          ModeloMexicano(
          nombre: "Comete Mexico",
         tipoComida: "Mexicana",
          imagenRestaurante: "imagenes/cometeMexico.png",
          pedidoMin: "8.50€",
          gastos: "2€"),
          ModeloMexicano(
          nombre: "Taqueria",
          tipoComida: "Mexicana",
          imagenRestaurante: "imagenes/Taqueria.jpg",
          pedidoMin: "10€",
          gastos: "2.50€"),
          ModeloMexicano(
          nombre: "Takos",
          tipoComida: "Mexicana",
          imagenRestaurante: "imagenes/takos.jpg",
          pedidoMin: "9.50€",
          gastos: "2€"),
      ];
  }

List<ItemRestaurante> _construirLista(){
  return _construirRestaurantes().map(
    (restaurant) => new ItemRestaurante(restaurant)
  ).toList();
 }

 @override
 

 Widget build(BuildContext context) {
  return new Scaffold(
        appBar: new AppBar(
          title: new Text("Restaurantes Mexicanos"),
        ),
        body: new ListView(
             children: _construirLista(),
    ));
  }

}