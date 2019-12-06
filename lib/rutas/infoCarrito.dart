import "package:flutter/material.dart";
//import "package:app_just_eat/pestanias/valoracion.dart";
//import 'package:app_just_eat/secciones/modelo_mexicano.dart';
import 'package:sarele_eat/pestanias/cambiosCarrito.dart';
import 'package:sarele_eat/pestanias/pagarPedido.dart';

enum Acciones { si, no }

class InformacionCarrito extends StatefulWidget {
 
 // Propiedad inmutable
  final String numero;
  final String tipoComida;
  final String fecha;
  final String imagen;
  final String coste;

  InformacionCarrito({this.numero, this.tipoComida, this.fecha, this.imagen, this.coste});

  @override
  _InformacionState createState() => _InformacionState();
}


class _InformacionState extends State<InformacionCarrito>  with SingleTickerProviderStateMixin{
   TextEditingController opinionController = new TextEditingController();
  TabController controlador;

void _realizarAccion(Acciones accion) {
    if (accion == Acciones.si) {
      setState(() {
        opinionController.clear();
      });
    } else {
      print("No se ha mandado tu opinión");
    }
  }

  void _mostrarDialogo() {
    AlertDialog dialogo = new AlertDialog(
      title: new Text("¿Tienes alguna alergia alimentaria?"),
      content: new Text('Si tu (o alguien para el que estás pidiedo la comida) tiene una alergia alimentaria o intolerancia a algún alimento, llama al restaurante'),
      
      actions: <Widget>[
        new FlatButton(
           child: new Text("CLOSE"),
            onPressed: () {
              // Para cerrar el cuadro de dialogo
              Navigator.pop(context);
            },
            //child: new Text("No"))
        )
      ],
    );
    showDialog(context: context, child: dialogo);
  }

  void _mostrarDialogo2() {
    AlertDialog dialogo = new AlertDialog(
      title: new Text("¿Deseas realizar tu pedido?"),
      
      actions: <Widget>[
        new FlatButton(
            onPressed: () {
              _realizarAccion(Acciones.si);
              // Para cerrar el cuadro de dialogo
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PagarPedido(
                   )),
                 );
            },
            child: new Text("Sí")),
        new FlatButton(
           child: new Text("No"),
            onPressed: () {
              // Para cerrar el cuadro de dialogo
              _realizarAccion(Acciones.no);
              Navigator.pop(context);
            },
        )
      ],
    );
    showDialog(context: context, child: dialogo);
  }


void initState() {
    super.initState();
    controlador = new TabController(
      length: 2,
      vsync: this,
    );
  }
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Carrito"), 
     ),   

      body: Container(
        child: Column(
           children: <Widget>[
         new Row( 
          children: <Widget>[
          Container(
             padding: EdgeInsets.only(left:100, right: 30, top: 20, bottom: 20),
           
            child: 
             new Center(child: new Text("Total del pedido:", 
              style: new TextStyle(fontWeight: FontWeight.bold,  fontSize: 22.0),)),
          ),
          
          ]
        ),
         Padding(
              padding: const EdgeInsets.only(top:5.0),
            ),
        new Row(children: <Widget>[
          Container(
            padding: EdgeInsets.only(left:130, right: 90, bottom: 15),
            child: Text("€23,50", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.green), ),
          ),
        ],
        
        ),
        new Row(children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(left:50.0, bottom: 20),
            ),
             RaisedButton(
                padding: EdgeInsets.only(right: 80, left: 80, top:8, bottom: 8),
                color: Colors.blueAccent,
                child: new Text("Pide ahora", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                onPressed: () {
                 _mostrarDialogo2();
                }),
        ],),
         Padding(
              padding: const EdgeInsets.all(5.0),
            ),
        new Row (children: <Widget>[
             Padding(
              padding: const EdgeInsets.only(left:50.0, bottom: 20),
            ),
              RaisedButton(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: new Text("¿Tienes alguna alergia o intolerancia?", style: TextStyle(color: Colors.blue)),
                onPressed: () {
                 _mostrarDialogo();
                }),
        
        ],),
          Padding(
              padding: const EdgeInsets.all(10.0),
            ),
        new Row(
          children: <Widget>[
             Container(
                padding: EdgeInsets.only(left: 9),
                child: Text("Resumen de pedido ",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold ) ),
              ),
              
              Padding(
              padding: const EdgeInsets.only(right: 100.0),
              ),
               RaisedButton(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: new Text("Cambiar", style: TextStyle(color: Colors.blue)),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CambiarCarrito(
                   )),
                 );
                 //new  CambiarCarrito();
                }),
          ]
        ),
       Padding(
              padding: const EdgeInsets.all(6.0),
            ),
      
        new Row(
          children: <Widget>[
             Container(
                padding: EdgeInsets.only(top:11, left: 10),
                child: Text("Productos", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), ),
              ),
              Container(
                padding: EdgeInsets.only(right: 5, top: 11, left: 100),
                child: Text("Unidad", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), ),

              ),

              Container(
                padding: EdgeInsets.only(right: 20, top: 11, left: 55),
                child: Text("Coste", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), ),

              ),
          ]
        ),
         Padding(
              padding: const EdgeInsets.only(top:5.0),
            ),
        new Divider(
        height: 18.0,
        color: Colors.blueGrey,
      ),

        new Row(
          children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("Fajitas", style: TextStyle(fontSize: 16), ),
              ),
               Container(
                padding: EdgeInsets.only(left: 145),
                child: Text("1", style: TextStyle(fontSize: 16, color: Colors.blueGrey), ),
              ),
               Container(
                padding: EdgeInsets.only(left: 88),
                child: Text("6.50 €", style: TextStyle(fontSize: 16, color: Colors.blueGrey), ),
              ),
          ]
        ),


        new Divider(
        height: 18.0,
        color: Colors.blueGrey,
        ),

       new Row(
          children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("Coca Cola", style: TextStyle(fontSize: 16), ),
              ),
               Container(
                padding: EdgeInsets.only(left: 120),
                child: Text("2", style: TextStyle(fontSize: 16,color: Colors.blueGrey), ),
              ),
              Container(
                padding: EdgeInsets.only(left: 110),
                child: Text("4 €", style: TextStyle(fontSize: 16, color: Colors.blueGrey), ),
              ),
          ]
        ),

        
   
       new Divider(
        height: 18.0,
        color: Colors.blueGrey,
        ),

        new Row(
          children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("Pasta Carbonara", style: TextStyle(fontSize: 16), ),
              ),
               Container(
                padding: EdgeInsets.only(left: 73),
                child: Text("2", style: TextStyle(fontSize: 16,  color: Colors.blueGrey), ),
              ),
              Container(
                padding: EdgeInsets.only(left: 101),
                child: Text("13 €", style: TextStyle(fontSize: 16, color: Colors.blueGrey), ),
              ),
          ]
        ),
         new Divider(
        height: 18.0,
        color: Colors.blueGrey,
      ),

      new Row(children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text("Gastos de Entrega", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
         Container(
                padding: EdgeInsets.only(left: 158),
                child: Text("0.00 €", style: TextStyle(fontSize: 16, color: Colors.blueGrey), ),
              ),
      ],),
       Padding(
              padding: const EdgeInsets.all(10.0),
            ),
      new Row(children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text("TOTAL", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
        Container(
          padding: EdgeInsets.only(left: 230),
          child: Text("23.50 €", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),))
      ],)
         ]
        )   
      ) 
    );  
  }
}  