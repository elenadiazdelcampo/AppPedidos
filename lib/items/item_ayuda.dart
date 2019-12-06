import "package:flutter/material.dart";
import 'package:sarele_eat/modelos/modelo_ayuda.dart';
import 'package:sarele_eat/rutas/ruta_configuracion.dart';



class ItemAyuda extends StatelessWidget {

final ModeloAyuda _restaurante;

 ItemAyuda(this._restaurante);

 @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new Divider(
        height: 18.0,
      ),
      new ListTile(
        leading: Container(
            width: 55.0,
            height: 55.0,
            decoration: BoxDecoration(
                //borderRadius: BorderRadius.all(const Radius.circular(60.0)),
                color: Colors.transparent,
                image: DecorationImage(
                   fit: BoxFit.cover,
                   image: AssetImage(_restaurante.subnombre)
                )
            )
          ),
        title: new Row(
          children: <Widget>[
            new Text(
              _restaurante.nombre,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
          onTap: (){
          Route ruta = new MaterialPageRoute(
            builder: (context) => new RutaConfiguracion( 
              
           
            )
          );
          Navigator.push(context, ruta);
        },
      )
    ]);
  }
}