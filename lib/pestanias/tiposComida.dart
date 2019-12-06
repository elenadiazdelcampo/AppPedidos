import 'package:flutter/material.dart';

class Comida extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return new Container(
      child:new ListView(
          children: [
          
            new MiCardStateful(
              imagen: "imagenes/comidaChina.jpg",
              nombre: "      Comida  China       ",
              ruta: "/china"

            ),
            
            new MiCardStateful(
              imagen: "imagenes/comidaMexicana.jpg",
               nombre: "   Comida  Mexicana   ",
               ruta: "/mexicana",
             ),

            new MiCardStateful(
               imagen: "imagenes/italiana.jpg",
               nombre: "     Comida  Italiana     ",
               ruta: "/italiana",
             ),

            new MiCardStateful(
              imagen: "imagenes/rollitos.jpg",
               nombre: "Comida Mediterránea",
               ruta: "/comidaMediterranea",
              ),
          ]
          
        )
    );
  }
}


class MiCardStateful extends StatefulWidget {
  // Propiedades estáticas
  
  final String imagen;
  final String nombre;
  final String ruta;

  // Constructor
  MiCardStateful(
      {this.imagen, this.nombre, this.ruta});

  @override
  _MiCardStatefulState createState() => _MiCardStatefulState();
}
    
class _MiCardStatefulState extends State<MiCardStateful> {
  //Propiedades dinámicas:
  

  @override
   Widget build(BuildContext context) {
    return new Container(
    // child:new ListView(
       padding: const EdgeInsets.only(top: 6.0),
        child: new Card(
          child: Container(
             // padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                 Container(
                  //margin: EdgeInsets.all(20.0),
                  width: 400.0,
                  height: 150.0,
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
                   // Container (padding: EdgeInsets.only(left: 20),),
                     RaisedButton(
                    padding: EdgeInsets.only(top:30, right: 60, left: 57, bottom: 30),
                    color: Colors.white,
                   child: new Center( child: new Text(widget.nombre, style: TextStyle(color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold))),
                   onPressed: () {
                     Navigator.pushNamed(context, widget.ruta);
                 
                }),
                  ]
                 ),
                ],
              ))),
    // )
    );
  }
}