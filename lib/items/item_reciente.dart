import "package:flutter/material.dart";
import 'package:sarele_eat/modelos/modelo_reciente.dart';


class ItemReciente extends StatelessWidget {
  final ModeloReciente _reciente;
  ItemReciente(this._reciente);
 
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
                //borderRadius: BorderRadius.all(const Radius.circular(60.0)),
                color: Colors.transparent,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(_reciente.imagen)))),
        title: new Row(
          children: <Widget>[
            new Text(
              _reciente.numero,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        subtitle: new Container(
          child: new Text(
            "Fecha: " + _reciente.fecha + " ",
            style: new TextStyle(
              fontSize: 15.0,
              color: Colors.grey,
            ),
          ),
          padding: const EdgeInsets.only(top: 5.0),
        ),
      )
    ]);
  }
}
