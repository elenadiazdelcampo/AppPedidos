import "package:flutter/material.dart";
import 'package:sarele_eat/modelos/modelo_configuracion.dart';
import 'package:sarele_eat/items/item_configuracion.dart';


class ListaConfiguracion extends StatelessWidget {

  static const nombreRuta = "/configuracion";

  List<ModeloConfiguracion> _construirConfiguracion() {
    return <ModeloConfiguracion>[
      ModeloConfiguracion(
          nombre: "Condiciones Legales", user: "Introducción",imagen: "imagenes/terminos_opt.jpg", mail: "Resumen", telefono: "¿Con quién compartimos sus datos?", pago: "Transferencia de datos", direccion: "Seguridad"),
      ModeloConfiguracion(
          nombre: "Pagos", user: "Paypal", imagen: "imagenes/pagos_opt.jpg", mail: "Pago Contrarrembolso", telefono: "Efectivo en domicilio", pago: "Tarjeta Visa", direccion: "Tarjeta Mastercard"),
      ModeloConfiguracion(
          nombre: "Privacidad",user: "Introducción", imagen: "imagenes/privacidad_opt.png", mail: "Resumen", telefono: "Cookies", pago: "Derechos de protección de datos", direccion: "Conservación de datos"),
      ModeloConfiguracion(nombre: "Agradecimientos", user: "Sara Lara Caro y Elena Díaz del Campo",imagen: "imagenes/agradecimiento_opt.png", mail: "Iván", telefono: "Flutter", pago: "Dart", direccion: "Visual Studio Code"),
      ModeloConfiguracion(nombre: "Perfil", user: "Nombre: María López",imagen: "imagenes/person_opt.jpg", mail: "E-mail: elena-diaz1998@hotmail.es", telefono: "Teléfono: 675345213", pago: "Método pago: Visa", direccion: "Dirección: Calle San Juan, 12 1ºE"),
      ModeloConfiguracion( nombre: "Condiciones de uso", user: "Términos y condiciones de uso y venta",imagen: "imagenes/condiciones.png", mail: "Condiciones códigos promociones", telefono: "Términos códigos promociones", pago:"Términos concursos" , direccion: "Condiciones concursos"),
     
    ];
  }

  List<ItemConfiguracion> _construirLista() {
    return _construirConfiguracion()
        .map((pedido) => new ItemConfiguracion(pedido))
        .toList();
  }

  @override
 

  Widget build(BuildContext context) {
  return new Scaffold(
        appBar: new AppBar(
          title: new Text("Configuración de la App"),
          
        ),
      
        body: new ListView(
             children: _construirLista(),
    ));
  }

  
}