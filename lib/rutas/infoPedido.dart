import "package:flutter/material.dart";


class InformacionPedido extends StatefulWidget {
 
 // Propiedad inmutable
  final String numero;
  final String tipoComida;
  final String fecha;
  final String imagen;
  final String coste;

  InformacionPedido({this.numero, this.tipoComida, this.fecha, this.imagen, this.coste});

  @override
  _InformacionState createState() => _InformacionState();
}


class _InformacionState extends State<InformacionPedido>  with SingleTickerProviderStateMixin{
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
       title: Text(widget.numero),
      
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
                   image: AssetImage(widget.imagen)
                )
            )
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text(widget.numero, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), ),
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
                child: Text("Fecha: ", style: TextStyle(fontSize: 16, color: Colors.black), ),
              ),
              Container(
                child: Text(widget.fecha, style: TextStyle(fontSize: 16, color: Colors.blueGrey), ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text("Coste: ", style: TextStyle(fontSize: 16, color: Colors.black), ),
              ),
              Container(
                child: Text(widget.coste, style: TextStyle(fontSize: 16, color: Colors.blueGrey), ),
              ),
          ]
        ),

        new Row(
          children: <Widget>[
             Container(
                padding: EdgeInsets.only(top:11, left: 10),
                child: Text("Productos", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), ),
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
                child: Text("Pizza napolitana", style: TextStyle(fontSize: 16,  fontWeight: FontWeight.bold), ),
              ),
               Container(
                padding: EdgeInsets.only(left: 200),
                child: Text("1", style: TextStyle(fontSize: 16, color: Colors.blueGrey), ),
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
                child: Text("Coca Cola", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), ),
              ),
               Container(
                padding: EdgeInsets.only(left: 248),
                child: Text("2", style: TextStyle(fontSize: 16,color: Colors.blueGrey), ),
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
                child: Text("Pasta Carbonara", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold), ),
              ),
               Container(
                padding: EdgeInsets.only(left: 200),
                child: Text("2", style: TextStyle(fontSize: 16,  color: Colors.blueGrey), ),
              ),
          ]
        ),

         ]
        )   
      ) 
    );  
  }
}  