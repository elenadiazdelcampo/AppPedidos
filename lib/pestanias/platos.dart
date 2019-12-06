import 'package:flutter/material.dart';
import "package:sarele_eat/pestanias/entrantes.dart";
import "package:sarele_eat/pestanias/principales.dart";
import "package:sarele_eat/pestanias/postres.dart";
import "package:sarele_eat/pestanias/bebidas.dart";
import "package:sarele_eat/rutas/infoCarrito.dart";

class GestorTabs extends StatefulWidget {
  @override
  _GestorTabsState createState() => _GestorTabsState();
}

class _GestorTabsState extends State<GestorTabs>
    with SingleTickerProviderStateMixin { //animacion (deslizar)
  TabController controlador;

  @override
  void initState() {
    super.initState();
    controlador = new TabController(
      length: 4,
      vsync: this, //(deslizar y para que vsync coja this necesita la agregacionn de arriba lina 20)
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Platos"),
         actions: <Widget>[
          new IconButton(icon: new Icon(Icons.local_grocery_store),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InformacionCarrito(
                   )),
                 );
              },
          ),   
        ], 
        bottom: TabBar(
          tabs: <Widget>[
            new Tab(
              text: "Entrantes",
            ),
            new Tab(
              text: "Principales",
            ),
            new Tab(
              text: "Bebidas",
            ),
             new Tab(
              text: "Postres",
            ),
          ],
          controller: controlador,
        ),
      ),
      body: new TabBarView(
        controller: controlador,
        children: <Widget>[
          new Entrantes(),
          new Principales(),
          new Bebidas(),
          new Postres()
        ],
      ),
    );
  }
}