import 'package:flutter/material.dart';

enum Acciones { si, no }

class BuzonSugerencias extends StatefulWidget {
  static const nombreRuta = "/buzon";
  BuzonSugerencias();

  @override
  _OpinionState createState() => _OpinionState();
  
}

class _OpinionState extends State<BuzonSugerencias> {

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
        title: new Text("Valoración de la App"),
      ), 

      body: new Container(
           padding: const EdgeInsets.all(8.0),
        child: new Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
            ),
            Text("Valora tu experiencia",style: TextStyle(fontSize: 17 )),
            Padding(
              padding: const EdgeInsets.all(5.0),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Introduce tu opinión",
              ),
              controller: opinionController,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
            ),
            RaisedButton(
               color: Colors.blueAccent,
                child: new Text("Enviar",style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                onPressed: () {
                 _mostrarDialogo();
                }),
          ],
        )
        )
        ),
      );
  }
}