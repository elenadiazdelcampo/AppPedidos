import "package:flutter/material.dart";
import 'package:sarele_eat/modelos/modelo_mexicano.dart';
import 'package:sarele_eat/items/item_mexicano.dart';


class RestaurantesChinos extends StatelessWidget{
static const nombreRuta = "/china";
  List<ModeloMexicano>_construirRestaurantes(){
      return <ModeloMexicano>[
        ModeloMexicano(
          nombre: "Wok Sun",
          tipoComida: "China",
          imagenRestaurante: "imagenes/wokSun.jpg",
          pedidoMin: "8.50€",
          gastos: "2€"),
        ModeloMexicano(
          nombre: "China Te",
         tipoComida: "China",
          imagenRestaurante: "imagenes/chinaTe.png",
          pedidoMin: "9€",
          gastos: "Gratis"),
        ModeloMexicano(
          nombre: "Restaurante Hong",
         tipoComida: "China",
          imagenRestaurante: "imagenes/hong.jpg",
          pedidoMin: "10€",
          gastos: "3€"),
          ModeloMexicano(
          nombre: "Wok",
         tipoComida: "China",
          imagenRestaurante: "imagenes/wok.jpg",
          pedidoMin: "8.50€",
          gastos: "2€"),
          ModeloMexicano(
          nombre: "Restaurante Chino",
          tipoComida: "China",
          imagenRestaurante: "imagenes/restaurante.jpg",
          pedidoMin: "10€",
          gastos: "2.50€"),
          ModeloMexicano(
          nombre: "Wok Dao",
          tipoComida: "China",
          imagenRestaurante: "imagenes/dao.jpg",
          pedidoMin: "10€",
          gastos: "1.50€"),
           ModeloMexicano(
          nombre: "Casa Chen",
          tipoComida: "China",
          imagenRestaurante: "imagenes/chen.jpg",
          pedidoMin: "11€",
          gastos: "Gratis"),
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
          title: new Text("Restaurantes Chinos"),
        ),
        body: new ListView(
             children: _construirLista(),
    ));
  }

}