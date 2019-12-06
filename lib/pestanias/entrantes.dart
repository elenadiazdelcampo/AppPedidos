import 'package:flutter/material.dart';

class Entrantes extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return new Container(
      child:new ListView(
          children: [
          
            new MiCardStateful(
              nombre: "ENSALADA",
              imagen: "imagenes/ensalada.jpg",
              precio: "5€",
              informacion: "Lechuga, Canónigos, Tomate y Cebolla " ,
            ),
            
            /*
             new MiCardStateful(
              nombre: "PIZZA ",
              imagen: "imagenes/pizza.jpg",
              precio: "17.95€",
              informacion: "Salsa de tomate, Queso 100% mozzarella" ,
             ),
        */
            new MiCardStateful(
              nombre: "Nachos con Queso",
              imagen: "imagenes/nachos.jpg",
              precio: "4.50€",
              informacion: "Queso Cheddar y Red Leicester" ,
            ),

            new MiCardStateful(
              nombre: "Patatas Grill",
              imagen: "imagenes/patatas.jpg",
              precio: "3€",
              informacion: "Crujientes patatas acompañadas con salsa" ,
            ),

            new MiCardStateful(
              nombre: "Rollitos de Primavera",
              imagen: "imagenes/rollitos.jpg",
              precio: "6.50€",
              informacion: "Carne picada, Verduras y Salsa de soja " ,
            ),
          ]
        )
    );
  }
}


class MiCardStateful extends StatefulWidget {
  // Propiedades estáticas
  final String nombre;
  final String informacion;
  final String imagen;
  final String precio;

  // Constructor
  MiCardStateful(
      {this.nombre, this.informacion, this.precio, this.imagen});

  @override
  _MiCardStatefulState createState() => _MiCardStatefulState();
}
    
class _MiCardStatefulState extends State<MiCardStateful> {
  //Propiedades dinámicas:
  num _contador = 0;

  void _incrementaContador() {
    setState(() {
      _contador++;
    });
  }
 
 void _decrementaContador() {
    setState(() {
      if (_contador>0) {
        _contador--;
      } else {
        _contador=0;
      }
      
    });
  }

  @override
   Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.only(top: 6.0),
      child: new Card(
          child: Container(
             // padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                 Container(
                  //margin: EdgeInsets.all(20.0),
                  width: 400.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.imagen),
                    )
                  )
                 ),
                 Padding(
                  padding: EdgeInsets.only(top: 10.0, left:10.0),
                 ),
                new Row( 
                  children: <Widget>[
                     Padding(
                  padding: EdgeInsets.only(top: 10.0, left:5.0),
                 ),
                    Text(widget.nombre,style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)
                    ),
                  ]
                ),

                 new Row( 
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, left:5.0),
                    ),
                    Text(widget.informacion,style: TextStyle(fontSize: 16.0)
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 18.0),
                    ),
                    Text(widget.precio,style: TextStyle(fontSize: 18.0, color: Colors.red, fontWeight: FontWeight.bold)
                    ),
                  ]
                ),
                 new Row( 
                  children: <Widget>[
                     new IconButton(icon: new Icon(Icons.remove_circle_outline, size:25),
                      onPressed: 
                       _decrementaContador,
                    ),
                    Text(_contador.toString(),
                      style: TextStyle(
                        fontSize: 18.0,
                      )), 
                    new IconButton(icon: new Icon(Icons.add_circle_outline, size:25),
                      onPressed: 
                       _incrementaContador,
                    ),
                  ]
                ),
                ],
              ))),
    );
  }
}