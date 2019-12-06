import 'package:flutter/material.dart';
// Widget reutilizado de sesiones anteriores (añadido al paquete "secciones")
//import 'package:app_just_eat/secciones/votodirecto.dart';
//import 'package:prueba/ruta_configuracion.dart';


class RutaHo extends StatefulWidget {
  @override
  _RutaHomeState createState() => _RutaHomeState();
}

class _RutaHomeState extends State<RutaHo> {
  ListView _listaMenu;
  @override
  ListTile _construirItem(BuildContext context, String texto, String ruta, String imagen) {
    
    return new ListTile(
       // leading: new Icon(iconData),
       
       leading: Container(
            //margin: EdgeInsets.all(10.0),
            width: 5.0,
            height: 5.0,
            
                decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(const Radius.circular(60.0)),
                 image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(imagen),
                )
                //color: Colors.orange,
               /* image: new DecorationImage(
                   
                   image: new AssetImage("imagenes/mexicana.jpg"), fit: BoxFit.cover
                )*/
            )
        ),
       // contentPadding: EdgeInsets.all(25.0),
        contentPadding: EdgeInsets.only(left: 1.0, top: 45.0, right: 65.0),
        
        title: new Center(child: new Text(texto, 
              style: new TextStyle(fontWeight: FontWeight.bold,  fontSize: 20.0),)),
        onTap: () {
          setState(() {
            Navigator.pushNamed(context, ruta);
          });
        });
  }
  //void initState() {
  // TODO: implement initState

  // super.initState();
  //_listaMenu = new ListView(children: <Widget>[
  ListView _construirListView(BuildContext context) {
    return new ListView(
      children: <Widget>[
      /*new DrawerHeader(
        child: new Text("Ajustes"),
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
      ),*/
      new Divider(
        height: 22.0,
      ),
      
      _construirItem(context, "Mexicana", "/mexicana", "imagenes/nachos.jpg"),

       Container (padding: EdgeInsets.all(5),),
       new Divider(
        height: 18.0,
        color: Colors.blueGrey,
       ),
      
      _construirItem(context, "China", "/china", "imagenes/nachos.jpg"),
       Container (padding: EdgeInsets.all(5),),
       new Divider(
        height: 18.0,
        color: Colors.blueGrey,
        
       ),
      _construirItem(context, "Italiana", "/italiana", "imagenes/nachos.jpg"),
       Container (padding: EdgeInsets.all(5),),
       new Divider(
        height: 18.0,
        color: Colors.blueGrey,
       ),
      _construirItem(context, "Mediterranea", "/mediterranea", "imagenes/nachos.jpg"),
       Container (padding: EdgeInsets.all(5),),
       new Divider(
        height: 18.0,
        color: Colors.blueGrey,
       ),
      // _construirItem(context, "Ayuda", "/ayuda")

    ]);
  }

  //]);
  //}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Tipos de Cocina', style: new TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
        backgroundColor: Colors.white,
        
      ),
      
      //drawer: new Drawer(child: _listaMenu),
      //drawer: new Drawer(child: _construirListView(context)),
      body: _construirListView(context),  
    );
  }
}