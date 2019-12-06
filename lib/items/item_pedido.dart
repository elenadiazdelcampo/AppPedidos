import "package:flutter/material.dart";
import 'package:sarele_eat/modelos/modelo_pedido.dart';
import 'package:sarele_eat/rutas/infoPedido.dart';

class ItemPedido extends StatelessWidget {
  final ModeloPedido _pedido;
  ItemPedido(this._pedido);

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
                    fit: BoxFit.cover, image: AssetImage(_pedido.imagen)))),
        title: new Row(
          children: <Widget>[
            new Text(
              _pedido.numero,
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        subtitle: new Container(
          child: new Text(
            "Fecha: " + _pedido.fecha + " ",
            style: new TextStyle(
              fontSize: 15.0,
              color: Colors.grey,
            ),
          ),
          padding: const EdgeInsets.only(top: 5.0),
        ),
        onTap: () {
          Route ruta = new MaterialPageRoute(
              builder: (context) =>new InformacionPedido(
              numero: _pedido.numero,
              tipoComida: _pedido.tipoComida,
              fecha: _pedido.fecha,
              imagen: _pedido.imagen,
              coste: _pedido.coste,

            )
                  
                  );
          Navigator.push(context, ruta);
        },
      )
    ]);
  }
}
