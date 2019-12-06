import "package:flutter/material.dart";
import "package:sarele_eat/pestanias/valoracion.dart";
import "package:sarele_eat/pestanias/platos.dart";



class Informacion extends StatefulWidget {
 
 // Propiedad inmutable
  final String nombre;
  final String tipoComida;
  final String pedidoMin;
  final String imagenRestaurante;
  final String gastos;

  Informacion({this.nombre, this.tipoComida, this.pedidoMin, this.imagenRestaurante, this.gastos});

  @override
  _InformacionState createState() => _InformacionState();
}


class _InformacionState extends State<Informacion>  with SingleTickerProviderStateMixin{
   TextEditingController opinionController = new TextEditingController();
  TabController controlador;
void initState() {
    super.initState();
    controlador = new TabController(
      length: 2,
      vsync: this,
    );
  }
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text(widget.nombre),
       actions: <Widget>[
          new IconButton(icon: new Icon(Icons.mode_comment),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Opinion(
                   )),
                 );
              },
          ),
         
        ], 
     ),   

     floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.fastfood),
          label: Text("PEDIR"),
        onPressed: () {
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GestorTabs()),
           );
        },
      ),   

      body: Container(
        child: Column(
           children: <Widget>[
         new Row( 
          children: <Widget>[
          Container(
            margin: EdgeInsets.all(20.0),
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
                //borderRadius: BorderRadius.all(const Radius.circular(60.0)),
                color: Colors.transparent,
                image: DecorationImage(
                   fit: BoxFit.cover,
                   image: AssetImage(widget.imagenRestaurante)
                )
            )
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(widget.nombre, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), ),
          ),
          ]
        ),

        new Row(
          children: <Widget>[
             Container(
                padding: EdgeInsets.only(left: 9),
                child: Text("Tipo de Comida: ",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold ) ),
              ),
               Container(
                padding: EdgeInsets.only(left: 9),
                child: Text(widget.tipoComida,style: TextStyle(fontSize: 16) ),
              ),
          ]
        ),
       
        new Row(
          children: <Widget>[
             Container(
                padding: EdgeInsets.only(top:11, left: 10),
                child: Text("A domicilio", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), ),
              ),
          ]
        ),

        new Row(
          children: <Widget>[
             Container(
                padding: EdgeInsets.all(10),
                child: Text("Pedido mínimo: ", style: TextStyle(fontSize: 16, color: Colors.black), ),
              ),
              Container(
                child: Text(widget.pedidoMin, style: TextStyle(fontSize: 16, color: Colors.blueGrey), ),
              ),
              Container(
                padding: EdgeInsets.all(6),
                child: Text("Gastos de entrega: ", style: TextStyle(fontSize: 16, color: Colors.black), ),
              ),
              Container(
                child: Text(widget.gastos, style: TextStyle(fontSize: 16, color: Colors.blueGrey), ),
              ),
          ]
        ),

        new Row(
          children: <Widget>[
             Container(
                padding: EdgeInsets.only(top:11, left: 10),
                child: Text("Opiniones", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), ),
              ),
          ]
        ),

        new Divider(
        height: 18.0,
        color: Colors.blueGrey,
      ),

        new Row(
          children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("María", style: TextStyle(fontSize: 16,  fontWeight: FontWeight.bold), ),
              ),
               Container(
                padding: EdgeInsets.only(left: 210),
                child: Text("30/05/2019", style: TextStyle(fontSize: 16, color: Colors.blueGrey), ),
              ),
          ]
        ),

        new Row(
          children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Icon(Icons.star, size: 16.0, color: Colors.red),
              ),
               Container(
              // padding: EdgeInsets.all(11),
                child: Icon(Icons.star, size: 16.0, color: Colors.red), 
              ),
              Container(
              // padding: EdgeInsets.all(11),
                child: Icon(Icons.star, size: 16.0, color: Colors.red), 
              ),
          ]
        ),
        new Row(
          children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("Todo muy bien", style: TextStyle(fontSize: 16, color: Colors.blueGrey), ),
              ),
          ]
        ),

        new Divider(
        height: 18.0,
        color: Colors.blueGrey,
        ),

       new Row(
          children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("Juan", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), ),
              ),
               Container(
                padding: EdgeInsets.only(left: 216),
                child: Text("29/05/2019", style: TextStyle(fontSize: 16,color: Colors.blueGrey), ),
              ),
          ]
        ),

        new Row(
          children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Icon(Icons.star, size: 16.0, color: Colors.red),
              ),
               Container(
              // padding: EdgeInsets.all(11),
                child: Icon(Icons.star, size: 16.0, color: Colors.red), 
              ),
              Container(
              // padding: EdgeInsets.all(11),
                child: Icon(Icons.star, size: 16.0, color: Colors.red), 
              ),
               Container(
              // padding: EdgeInsets.all(11),
                child: Icon(Icons.star, size: 16.0, color: Colors.red), 
              ),
          ]
        ),
        new Row(
          children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("Increible!!", style: TextStyle(fontSize: 16, color: Colors.blueGrey), ),
              ),
          ]
        ),
   
       new Divider(
        height: 18.0,
        color: Colors.blueGrey,
        ),

        new Row(
          children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("Ana", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), ),
              ),
               Container(
                padding: EdgeInsets.only(left: 222),
                child: Text("25/04/2019", style: TextStyle(fontSize: 16,  color: Colors.blueGrey), ),
              ),
          ]
        ),

        new Row(
          children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Icon(Icons.star, size: 16.0, color: Colors.red),
              ),
               Container(
              // padding: EdgeInsets.all(11),
                child: Icon(Icons.star, size: 16.0, color: Colors.red), 
              ),
          ]
        ),
        new Row(
          children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                child: Text("Llego con retraso", style: TextStyle(fontSize: 16,  color: Colors.blueGrey), ),
              ),
          ]
        ),

         ]
        )   
      ) 
    );  
  }
}  