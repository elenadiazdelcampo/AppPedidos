import 'package:flutter/material.dart';
import 'package:sarele_eat/rutas/ruta_home.dart';
import 'package:sarele_eat/listas/lista_configuracion.dart';
import 'package:sarele_eat/rutas/ruta_ayuda.dart';
import 'package:sarele_eat/secciones/login.dart';
import 'package:sarele_eat/listas/lista_pedidos.dart';
import 'package:sarele_eat/listas/lista_mexicano.dart';
import 'package:sarele_eat/listas/lista_china.dart';
import 'package:sarele_eat/listas/lista_italiana.dart';
import 'package:sarele_eat/listas/lista_mediterranea.dart';
import 'package:sarele_eat/listas/reciente_visto.dart';
import 'package:sarele_eat/pestanias/buzonSugerencias.dart';
import 'package:flutter/services.dart';


void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new RutaHome (),
    //home: new MiStatelessWidget(),
    routes: <String, WidgetBuilder>{
    ListaConfiguracion.nombreRuta:
    (BuildContext context) => new ListaConfiguracion(),
    RutaAyuda.nombreRuta:
    (BuildContext context) => new RutaAyuda(),
    MyApp.nombreRuta:
    (BuildContext context) => new MyApp(),
    ListaPedidos.nombreRuta:
    (BuildContext context) => new ListaPedidos(),
    ListaMexicana.nombreRuta:
    (BuildContext context) => new ListaMexicana(),
    RestaurantesChinos.nombreRuta:
    (BuildContext context) => new RestaurantesChinos(),
    ListaItaliana.nombreRuta:
    (BuildContext context) => new ListaItaliana(),
    ListaMediterranea.nombreRuta:
    (BuildContext context) => new ListaMediterranea(),
    RecienteVisto.nombreRuta:
    (BuildContext context) => new RecienteVisto(),
    BuzonSugerencias.nombreRuta:
    (BuildContext context) => new BuzonSugerencias(),


    }
  ));
}

