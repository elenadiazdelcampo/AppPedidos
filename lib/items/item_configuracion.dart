import "package:flutter/material.dart";
import 'package:sarele_eat/modelos/modelo_configuracion.dart';
import 'package:sarele_eat/rutas/infoConfiguracion.dart';

class ItemConfiguracion extends StatelessWidget {
  final ModeloConfiguracion _pedido;
  ItemConfiguracion(this._pedido);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: new CircleAvatar(
        child: new Text(_pedido.nombre[0]),
       // child: new Text(_pedido.nombre.substring(4,5)),
        foregroundColor: Colors.white,
       // backgroundColor: Colors.orangeAccent, // backgroundImage:
      ),
      contentPadding: EdgeInsets.only(top: 25.0, left: 15.0),
      title: new Text(_pedido.nombre, style: new TextStyle(fontWeight: FontWeight.bold)),
    //  subtitle: new Text(_pedido.imagen),
    onTap: (){
          Route ruta = new MaterialPageRoute(
            builder: (context) => new InfoConfiguracion( 
              nombre: _pedido.nombre,
              user: _pedido.user,
              imagen: _pedido.imagen,
              mail: _pedido.mail,
              telefono: _pedido.telefono,
              pago: _pedido.pago,
              direccion: _pedido.direccion

           
            )
          );
          Navigator.push(context, ruta);
        },


    );
  }
}