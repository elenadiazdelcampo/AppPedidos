class ModeloPedido {
  String _numero;
  String _tipoComida;
  String _imagen;
  String _fecha;
  String _coste;


  ModeloPedido({String numero, String tipoComida, String imagen, String fecha, String coste}) {
    this._numero = numero;
    this._tipoComida = tipoComida;
    this._imagen = imagen;
    this._fecha = fecha;
    this._coste = coste;
    
  }
  String get numero => _numero;
  String get tipoComida => _tipoComida;
  String get imagen => _imagen;
  String get fecha => _fecha;
  String get coste => _coste;
  

}
