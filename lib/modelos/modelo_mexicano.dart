class ModeloMexicano{
String _nombre;
String _tipoComida;
String _imagenRestaurante;
String _pedidoMin;
String _gastos;


 ModeloMexicano({String nombre, String tipoComida, String imagenRestaurante, String pedidoMin, String gastos})
 {
 this._nombre = nombre;
 this._tipoComida = tipoComida;
 this._imagenRestaurante = imagenRestaurante;
 this._pedidoMin = pedidoMin;
 this._gastos = gastos;
 }

String get nombre => _nombre;
String get tipoComida => _tipoComida;
String get imagenRestaurante => _imagenRestaurante;
String get pedidoMin => _pedidoMin;
String get gastos => _gastos;
}