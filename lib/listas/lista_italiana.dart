import "package:flutter/material.dart";
import 'package:sarele_eat/modelos/modelo_mexicano.dart';
import 'package:sarele_eat/items/item_mexicano.dart';


class ListaItaliana extends StatelessWidget{
  static const nombreRuta = "/italiana";

  List<ModeloMexicano>_construirRestaurantes(){

      return <ModeloMexicano>[
        ModeloMexicano(
          nombre: "Ginos",
          tipoComida: "Italiana",
          imagenRestaurante: "imagenes/Ginos.jpg",
          pedidoMin: "20€",
          gastos: "Gratis"),
        ModeloMexicano(
          nombre: "La Tagliatella",
         tipoComida: "Italiana",
          imagenRestaurante: "imagenes/tagliatella.jpg",
          pedidoMin: "18€",
          gastos: "Gratis"),
        ModeloMexicano(
          nombre: "La Mafia",
          tipoComida: "Italiana",
          imagenRestaurante: "imagenes/mafia.jpg",
          pedidoMin: "15€",
          gastos: "2€"),
        ModeloMexicano(
          nombre: "Muerde La Pasta",
          tipoComida: "Italiana",
          imagenRestaurante: "imagenes/muerde.png",
          pedidoMin: "10€",
          gastos: "2€"),
          ModeloMexicano(
          nombre: "Pomodoro",
          tipoComida: "Italiana",
          imagenRestaurante: "imagenes/pomodoro.jpg",
          pedidoMin: "9.50€",
          gastos: "2€"),
          ModeloMexicano(
          nombre: "Domino's Pizza",
          tipoComida: "Pizzería",
          imagenRestaurante: "imagenes/dominos.png",
          pedidoMin: "10€",
          gastos: "2€"),
          ModeloMexicano(
          nombre: "Pizza Hut",
           tipoComida: "Pizzería",
          imagenRestaurante: "imagenes/pizzaHut.jpg",
          pedidoMin: "10€",
          gastos: "Gratis"),
          ModeloMexicano(
          nombre: "Telepizza",
           tipoComida: "Pizzería",
          imagenRestaurante: "imagenes/telepizza.jpg",
          pedidoMin: "9.50€",
          gastos:"2€"),
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
          title: new Text("Restaurantes Italianos"),
        ),
        body: new ListView(
             children: _construirLista(),
    ));
  }
}