import "package:flutter/material.dart";

class RutaInicio extends StatelessWidget {
// Variable estática que se usa en main.dart (propiedad routes)
  static const nombreRuta = "/inicio";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Iniciar Sesion SarEle Eat"),
          backgroundColor: Colors.orangeAccent,
        ),
        body: new Container(
            child: new Center(
          child: new Text("Nombre"),
        )));
  }
}