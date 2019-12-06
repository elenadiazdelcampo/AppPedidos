import "package:flutter/material.dart";
import 'package:sarele_eat/modelos/modelo_mexicano.dart';
import "package:sarele_eat/rutas/infoRestaurante.dart";

class ItemRestaurante extends StatelessWidget {

final ModeloMexicano _restaurante;


 ItemRestaurante(this._restaurante);

 @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new Divider(
        height: 18.0,
      ),
      new ListTile(
        leading: Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                   fit: BoxFit.cover,
                   image: AssetImage(_restaurante.imagenRestaurante)
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
        subtitle: new Container(
            child: new Text("Pedido mínimo: "+_restaurante.pedidoMin+ " ",
            style: new TextStyle(
              fontSize: 15.0,
              color: Colors.grey,
            ),  
          ),
          padding: const EdgeInsets.only(top: 5.0),
        ),


        onTap: (){
          Route ruta = new MaterialPageRoute(
            builder: (context) => new Informacion(
              nombre: _restaurante.nombre,
              tipoComida: _restaurante.tipoComida,
              pedidoMin: _restaurante.pedidoMin,
              imagenRestaurante: _restaurante.imagenRestaurante,
              gastos: _restaurante.gastos,

            )
          );
          Navigator.push(context, ruta);
        },
      )
    ]);
  }
}

