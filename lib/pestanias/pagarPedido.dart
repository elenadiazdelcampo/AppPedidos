import 'package:flutter/material.dart';
import 'package:sarele_eat/rutas/ruta_home.dart';

enum Acciones { si, no }

class PagarPedido extends StatefulWidget {
   
  PagarPedido();

  @override
  _OpinionState createState() => _OpinionState();
  
}

class _OpinionState extends State<PagarPedido> {

  TextEditingController nombreController = new TextEditingController();
  TextEditingController direccionController = new TextEditingController();
  TextEditingController telefonoController = new TextEditingController();
  TextEditingController tarjetaController = new TextEditingController();
   bool wedVal = false;
   bool monVal = false;
  void _realizarAccion(Acciones accion) {
    if (accion == Acciones.si) {
      setState(() {
        nombreController.clear();
        direccionController.clear();
        telefonoController.clear();
        tarjetaController.clear();
      });
    } else {
      print("No se ha mandado tu opinión");
    }
  }

  void _mostrarDialogo() {
    AlertDialog dialogo = new AlertDialog(
      content: new Text('¿Confirmar pedido?', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
      actions: <Widget>[
        new FlatButton(
            onPressed: () {
              _realizarAccion(Acciones.si);
              // Para cerrar el cuadro de dialogo
              //Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RutaHome(
                   )),
                 );
            },
            child: new Text("Sí")),
        new FlatButton(
            onPressed: () {
              // Para cerrar el cuadro de dialogo
              _realizarAccion(Acciones.no);
              Navigator.pop(context);
            },
            child: new Text("No"))
      ],
    );
    showDialog(context: context, child: dialogo);
  }

  @override
  Widget build(BuildContext context) {
  
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Hacer pedido"),
      ), 

      body: new Container(
           padding: const EdgeInsets.all(8.0),
        child: new Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(5.0),
            ),
            Text("¿Cómo quieres pagar?",style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
             Padding(
              padding: const EdgeInsets.all(5.0),
            ),
            new Row(
             // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("En efectivo"),
                 Checkbox(
                    value: wedVal,
                    onChanged: (bool value) {
                      setState(() {
                        wedVal = value;
                      });
                    },
            ),

            Text("Con tarjeta"),
            Checkbox(
                    value: monVal,
                    onChanged: (bool value) {
                      setState(() {
                        monVal = value;
                      });
                    },
            ),
            ],
            ),
            
             Padding(
              padding: const EdgeInsets.all(10.0),
            ),
            Text("Nombre y apellidos*",style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold )),
            
            TextField(
              decoration: InputDecoration(
                hintText: "Introduce tu nombre y apellidos",
              ),
              controller: nombreController,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
            ),
            Text("Dirección de entrega*",style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold )),
           
            TextField(
              decoration: InputDecoration(
                hintText: "Introduce tu dirección",
              ),
              controller: direccionController,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
            ),
            Text("Teléfono*",style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold )),
           
            TextField(
              decoration: InputDecoration(
                hintText: "Introduce tu teléfono",
              ),
              controller: telefonoController,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
            ),
            Text("Número de tarjeta",style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold )),
           /* Padding(
              padding: const EdgeInsets.all(5.0),
            ),*/
             TextField(
              decoration: InputDecoration(
                hintText: "Introduce tu número de tarjeta",
              ),
              controller: tarjetaController,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
            ),
            RaisedButton(
                color: Colors.blueAccent,
                child: new Text("Hacer el pedido", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                onPressed: () {
                 _mostrarDialogo();
                }),
          ],
        )
        )
        ),
      );
  }
}