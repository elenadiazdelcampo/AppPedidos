import "package:flutter/material.dart";
import 'package:sarele_eat/modelos/modelo_cocina.dart';



class ItemCocina extends StatelessWidget {

final ModeloCocina _restaurante;

 ItemCocina(this._restaurante);

 @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      new Divider(
        height: 18.0,
      ),
      new ListTile(
        leading: Container(
            width: 95.0,
            height: 75.0,
        ),
        title: new Row(
          children: <Widget>[
           new Center( child: new Text(
              _restaurante.nombre,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
           )
          ],
        ),
       
      )
    ]);
  }
}
