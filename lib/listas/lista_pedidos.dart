import "package:flutter/material.dart";
import 'package:sarele_eat/modelos/modelo_pedido.dart';
import 'package:sarele_eat/items/item_pedido.dart';

class ListaPedidos extends StatelessWidget {

  static const nombreRuta = "/pedidos";

  List<ModeloPedido> _construirPedidos() {
    return <ModeloPedido>[
      ModeloPedido(
          numero: "Pedido: 1", tipoComida: "Mexicana",imagen: "imagenes/taco.jpg",fecha: "05/01/2018",  coste: "12€" ),
      ModeloPedido(
          numero: "Pedido: 2", tipoComida: "Mexicana", imagen: "imagenes/wok.jpg",fecha: "08/03/2018", coste: "12€"),
      ModeloPedido(
          numero: "Pedido: 3", tipoComida: "Mexicana",imagen: "imagenes/muerde.png", fecha: "12/08/2018", coste: "12€"),
      ModeloPedido(numero: "Pedido: 4", tipoComida: "Mexicana",imagen: "imagenes/Ginos.jpg", fecha: "05/10/2018", coste: "12€"),
      ModeloPedido(numero: "Pedido: 5", tipoComida: "Mexicana",imagen: "imagenes/telepizza.jpg", fecha: "25/01/2019", coste: "12€"),
      ModeloPedido(
          numero: "Pedido: 6", tipoComida: "Mexicana",imagen: "imagenes/mafia.jpg", fecha: "14/02/2019", coste: "12€"),
      ModeloPedido(
          numero: "Pedido: 7", tipoComida: "Mexicana",imagen: "imagenes/tacoJohns.jpg", fecha: "17/03/2019", coste: "12€"),
      ModeloPedido(numero: "Pedido: 8",tipoComida: "Mexicana", imagen: "imagenes/caleta.jpg", fecha: "02/04/2019", coste: "12€"),
      ModeloPedido(
          numero: "Pedido: 9",tipoComida: "Mexicana",imagen: "imagenes/brasas.jpg", fecha: "27/04/2019" , coste: "12€"),
     
    ];
  }

  List<ItemPedido> _construirLista() {
    return _construirPedidos()
        .map((pedido) => new ItemPedido(pedido))
        .toList();
  }


  Widget build(BuildContext context) {
  return new Scaffold(
        appBar: new AppBar(
          title: new Text("Histórico de pedidos"),
        ),
        body: new ListView(
             children: _construirLista(),
    ));
  }

  
}