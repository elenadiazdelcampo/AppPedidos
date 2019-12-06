import 'package:flutter/material.dart';

enum Acciones { si, no }

class Carrito extends StatefulWidget {
   
  Carrito();

  @override
  _CarritoState createState() => _CarritoState();
  
}

class _CarritoState extends State<Carrito> {

  TextEditingController opinionController = new TextEditingController();

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
      content: new Text('¿Desea enviar su opinión?'),
      actions: <Widget>[
        new FlatButton(
            onPressed: () {
              _realizarAccion(Acciones.si);
              // Para cerrar el cuadro de dialogo
              Navigator.pop(context);
            },
            child: new Text("Sí")),
        new FlatButton(
            onPressed: () {
              // Para cerrar el cuadro de dialogo
              _realizarAccion(Acciones.no);
              Navigator.pop(context);
            },
            child: new Text("No"))
      ],
    );
    showDialog(context: context, child: dialogo);
  }

  @override
  Widget build(BuildContext context) {
   
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Pedido"),
      ), 

      body: new Container(
          
        ),
      );
  }
}