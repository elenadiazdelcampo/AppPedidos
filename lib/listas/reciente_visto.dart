import "package:flutter/material.dart";
import 'package:sarele_eat/modelos/modelo_reciente.dart';
import 'package:sarele_eat/items/item_reciente.dart';

class RecienteVisto extends StatelessWidget {

  static const nombreRuta = "/reciente";

  List<ModeloReciente> _construirReciente() {
    return <ModeloReciente>[
      ModeloReciente(
          numero: "La Mafia", tipoComida: "Italiana",imagen: "imagenes/mafia.jpg", fecha: "14/02/2019    Hora: 19:30", coste: "12€"),
      ModeloReciente(
          numero: "Taco Bell", tipoComida: "Mexicana",imagen: "imagenes/taco.jpg",fecha: "08/03/2018    Hora: 13:00",  coste: "12€" ),
       ModeloReciente(numero: "Ginos", tipoComida: "Italiana",imagen: "imagenes/Ginos.jpg", fecha: "21/10/2018    Hora: 20:00", coste: "12€"),
       ModeloReciente(
          numero: "d'Brasas",tipoComida: "Mediterránea",imagen: "imagenes/brasas.jpg", fecha: "27/04/2019    Hora: 22:15" , coste: "12€"),
      ModeloReciente(
          numero: "Wok", tipoComida: "China", imagen: "imagenes/wok.jpg",fecha: "08/03/2018    Hora: 13:30", coste: "12€"),
      ModeloReciente(
          numero: "Muerde La Pasta", tipoComida: "Italiana",imagen: "imagenes/muerde.png", fecha: "12/08/2018    Hora: 14:00", coste: "12€"),
       ModeloReciente(numero: "La Caleta",tipoComida: "Mediterranea", imagen: "imagenes/caleta.jpg", fecha: "02/04/2019    Hora: 21:00", coste: "12€"),
      ModeloReciente(numero: "Telepizza", tipoComida: "Italiana",imagen: "imagenes/telepizza.jpg", fecha: "25/01/2019    Hora: 14:10", coste: "12€"),
      ModeloReciente(
          numero: "Taco Jonh's", tipoComida: "Mexicana",imagen: "imagenes/tacoJohns.jpg", fecha: "17/03/2019     Hora: 20:45", coste: "12€"),
     
    ];
  }

  List<ItemReciente> _construirLista() {
    return _construirReciente()
        .map((reciente) => new ItemReciente(reciente))
        .toList();
  }

  Widget build(BuildContext context) {
  return new Scaffold(
        appBar: new AppBar(
          title: new Text("Reciente visto"),
        ),
        body: new ListView(
             children: _construirLista(),
    ));
  }

  
}