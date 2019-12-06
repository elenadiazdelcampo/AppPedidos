import 'package:flutter/material.dart';

class Postres extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return new Container(
      child:new ListView(
          children: [
            
            new MiCardStateful(
              nombre: "TARTA DE QUESO",
              imagen: "imagenes/queso.jpg",
              precio: "4€",
              informacion: "Tarta de Queso con Mermelada de Fresa" ,
            ),

             new MiCardStateful(
              nombre: "TARTA TRES CHOCOLATES",
              imagen: "imagenes/tres.jpg",
              precio: "3.50€",
              informacion: "Chocolate Negro, con Leche y Blanco" ,
            ),

            
            new MiCardStateful(
              nombre: "BROWNIE",
              imagen: "imagenes/postre.jpg",
              precio: "3.50€",
              informacion: "Brownie de Chocolate" ,
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