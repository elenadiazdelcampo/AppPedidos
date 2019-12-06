import "package:flutter/material.dart";
//import "package:app_just_eat/pestanias/valoracion.dart";
//import 'package:app_just_eat/secciones/modelo_mexicano.dart';
import 'package:sarele_eat/rutas/infoCarrito.dart';
import 'package:sarele_eat/rutas/ruta_home.dart';
import 'package:sarele_eat/pestanias/pagarPedido.dart';

enum Acciones { si, no }

class CambiarCarrito extends StatefulWidget {
 
 // Propiedad inmutable
  final String numero;
  final String tipoComida;
  final String fecha;
  final String imagen;
  final String coste;

  CambiarCarrito({this.numero, this.tipoComida, this.fecha, this.imagen, this.coste});

  @override
  _InformacionState createState() => _InformacionState();
}


class _InformacionState extends State<CambiarCarrito>  with SingleTickerProviderStateMixin{
   TextEditingController opinionController = new TextEditingController();
  TabController controlador;

 num _contadorFajitas = 0;
 num _contadorBebida = 0;
 num _contadorPasta = 0;

  void _incrementaContadorFajitas() {
    setState(() {
     _contadorFajitas++;
    });
  }
 
 void _decrementaContadorFajitas() {
    setState(() {
      if (_contadorFajitas>0) {
        _contadorFajitas--;
      } else {
        _contadorFajitas=0;
      }
      
    });
  }

  void _incrementaContadorBebida() {
    setState(() {
     _contadorBebida++;
    });
  }
 
 void _decrementaContadorBebida() {
    setState(() {
      if (_contadorBebida>0) {
        _contadorBebida--;
      } else {
        _contadorBebida=0;
      }
      
    });
  }

  void _incrementaContadorPasta() {
    setState(() {
     _contadorPasta++;
    });
  }
 
 void _decrementaContadorPasta() {
    setState(() {
      if (_contadorPasta>0) {
        _contadorPasta--;
      } else {
        _contadorPasta=0;
      }
      
    });
  }

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
              Navigator.pop(context);
            },
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
              //Navigator.pop(context);
            },
            child: new Text("Sí")),
        new FlatButton(
           child: new Text("No"),
            onPressed: () {
              // Para cerrar el cuadro de dialogo
              _realizarAccion(Acciones.no);
              Navigator.pop(context);
            },
            //child: new Text("No"))
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
       title: Text("Cambiar carrito"),
     ),   

      body: Container(
        child: Column(
           children: <Widget>[
         new Row( 
          children: <Widget>[
          Container(
             padding: EdgeInsets.only(left:100, right: 30, top: 20, bottom: 10),
           
            child: 
             new Center(child: new Text("Total del pedido:", 
              style: new TextStyle(fontWeight: FontWeight.bold,  fontSize: 22.0),)),
          ),
          ]
        ),
         /*Padding(
              padding: const EdgeInsets.only(top:5.0),
            ),*/
        new Row(children: <Widget>[
          Container(
            padding: EdgeInsets.only(left:130, right: 90, bottom: 8),
            child: Text("€23,50", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.green), ),
          ),
        ],
        
        ),
        new Row(children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(left:50.0, bottom: 10),
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
              padding: const EdgeInsets.only(top: 10.0),
            ),
        new Row(
          children: <Widget>[
             Container(
                padding: EdgeInsets.only(left: 9),
                child: Text("Resumen de pedido ",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold ) ),
              ),
              Padding(
              padding: const EdgeInsets.only(right: 60.0),
              ),
               RaisedButton(
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: new Text("Guardar cambios", style: TextStyle(color: Colors.blue)),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InformacionCarrito(
                   )),
                 );
                
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
        
        new Divider(
        height: 7.0,
        color: Colors.blueGrey,
      ),

        new Row(
          children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("Fajitas", style: TextStyle(fontSize: 16), ),
              ),
      
                new IconButton(icon: new Icon(Icons.remove_circle_outline, size:20),
                       padding: EdgeInsets.only(left: 115, right: 10),
                      onPressed: 
                       _decrementaContadorFajitas,
                    ),
                    Text(_contadorFajitas.toString(),
                      style: TextStyle(
                        fontSize: 18.0,
                      )), 
                    new IconButton(icon: new Icon(Icons.add_circle_outline, size:20),
                      onPressed:
                       _incrementaContadorFajitas,
                    ),
               Container(
                padding: EdgeInsets.only(left: 33),
                child: Text("6.50 €", style: TextStyle(fontSize: 16, color: Colors.blueGrey), ),
              ),
          ]
        ),


        new Divider(
        height: 7.0,
        color: Colors.blueGrey,
        ),

       new Row(
          children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("Coca Cola", style: TextStyle(fontSize: 16), ),
              ),
              
              new IconButton(icon: new Icon(Icons.remove_circle_outline, size:20),
               padding: EdgeInsets.only(left: 90, right: 10),
                      onPressed: 
                       _decrementaContadorBebida,
                    ),
                    Text(_contadorBebida.toString(),
                      style: TextStyle(
                        fontSize: 18.0,
                      )), 
                    new IconButton(icon: new Icon(Icons.add_circle_outline, size:20),
                      onPressed: 
                       _incrementaContadorBebida,
                    ),
              Container(
                padding: EdgeInsets.only(left: 55),
                child: Text("4 €", style: TextStyle(fontSize: 16, color: Colors.blueGrey), ),
              ),
          ]
        ),

        
   
       new Divider(
        height: 7.0,
        color: Colors.blueGrey,
        ),

        new Row(
          children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("Pasta Carbonara", style: TextStyle(fontSize: 16), ),
              ),
               
              new IconButton(icon: new Icon(Icons.remove_circle_outline, size:20),
               padding: EdgeInsets.only(left: 45, right: 10),
                      onPressed: 
                       _decrementaContadorPasta,
                    ),
                    Text(_contadorPasta.toString(),
                      style: TextStyle(
                        fontSize: 18.0,
                      )), 
                    new IconButton(icon: new Icon(Icons.add_circle_outline, size:20),
                      onPressed: 
                       _incrementaContadorPasta,
                    ),
              Container(
                padding: EdgeInsets.only(left: 47),
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