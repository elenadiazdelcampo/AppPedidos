import "package:flutter/material.dart";

class InfoConfiguracion extends StatefulWidget {
 
 // Propiedad inmutable
  final String nombre;
  final String user;
  final String imagen;
  final String mail;
  final String telefono;
  final String pago;
  final String direccion;
 

  InfoConfiguracion({this.nombre, this.user, this.imagen, this.mail, this.telefono, this.pago, this.direccion});

  @override
  _InformacionState createState() => _InformacionState();
}


class _InformacionState extends State<InfoConfiguracion>  with SingleTickerProviderStateMixin{
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
            child: Text(widget.nombre, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), ),
          ),
          ]
        ),
       Container (padding: EdgeInsets.all(10),),
        new Row(
          children: <Widget>[
               Container(
                padding: EdgeInsets.only(left: 9),
                child: Text(widget.user,style: TextStyle(fontSize: 16) ),
              ),
          ]
        ),
      Container (padding: EdgeInsets.all(5),),
      new Divider(
        height: 18.0,
        color: Colors.blueGrey,
      ),
        new Row(
          children: <Widget>[
               Container(
                padding: EdgeInsets.only(left: 9),
                child: Text(widget.mail,style: TextStyle(fontSize: 16) ),
              ),
          ]
        ),
       Container (padding: EdgeInsets.all(5),),
       new Divider(
        height: 18.0,
        color: Colors.blueGrey,
       ),

        new Row(
          children: <Widget>[
             Container(
                padding: EdgeInsets.only(top:11, left: 10),
                child: Text( widget.direccion, style: TextStyle(fontSize: 16), ),
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
                 padding: EdgeInsets.all(10),
                child: Text(widget.telefono, style: TextStyle(fontSize: 16, color: Colors.black), ),
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
                 padding: EdgeInsets.all(10),
                child: Text(widget.pago, style: TextStyle(fontSize: 16, color: Colors.black), ),
              ),
          ]
        ),
         ]
        )   
      ) 
    );  
  }
}  