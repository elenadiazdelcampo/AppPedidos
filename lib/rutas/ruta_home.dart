import 'package:flutter/material.dart';
import 'package:sarele_eat/pestanias/tiposComida.dart';


class RutaHome extends StatefulWidget {
  @override
  _RutaHomeState createState() => _RutaHomeState();
  
}

class _RutaHomeState extends State<RutaHome> {
  ListView _listaMenu;
  @override
  ListTile _construirItem(
      BuildContext context, IconData iconData, String texto, String ruta) {
    return new ListTile(
        leading: new Icon(iconData),
        title: new Text(texto),
        onTap: () {
          setState(() {
            Navigator.pushNamed(context, ruta);
          });
        });
  }
 
  ListView _construirListView(BuildContext context) {
    return new ListView(children: <Widget>[
      new DrawerHeader(
        child: new Text("Ajustes",  style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white)),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          
        ),
      ),
      _construirItem(context, Icons.settings, "Configuración", "/configuracion"),
      _construirItem(context, Icons.home, "Home", "/"),
      _construirItem(context, Icons.note, "Pedidos", "/pedidos"),
      _construirItem(context, Icons.remove_red_eye, "Recientemente visto", "/reciente"),
      _construirItem(context, Icons.person, "Iniciar Sesión", "/inicio"),
      _construirItem(context, Icons.edit, "Buzón sugerencias de la App", "/buzon"),

      
      new AboutListTile(
        child: new Text("Información"),
        applicationIcon: new Icon(Icons.info),
        icon: new Icon(Icons.info),
        applicationName: "Sara y Elena",
        applicationVersion: "v1.0",
      ),
       _construirItem(context, Icons.help, "Ayuda", "/ayuda")

    ]);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: 
      //PARA METERLE UNA IMAGEN AL TÏTULO DEL APPBAR
      /*PreferredSize(
         preferredSize: Size.fromHeight(50.0), // here the desired height
          child: AppBar(
            // title: new Text('EleSar Eat'),
            // background: _buildBackground(imageUrl),
           //  backgroundColor: Colors.blue,
            // ...
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset(
                 'imagenes/eta.jpg',
                  fit: BoxFit.cover,
                  height: 350,
                  width: 240,
              ),
            /*  Container(
                  padding: const EdgeInsets.all(8.0), child: Text('EleSar Eat'))*/
            ],

          ),
          )
      ),*/
      
    new AppBar(
       title: new Text('EleSar Eat'),
       backgroundColor: Colors.blue,
     ),
      //drawer: new Drawer(child: _listaMenu),
      drawer: new Drawer(child: _construirListView(context)),
      body: new Comida(),
    );
  }
}