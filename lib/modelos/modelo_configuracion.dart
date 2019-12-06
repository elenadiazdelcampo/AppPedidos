class ModeloConfiguracion {
  String _nombre;
  String _user;
  String _imagen;
  String _mail;
  String _telefono;
  String _pago;
  String _direccion;


  ModeloConfiguracion({String nombre, String user, String imagen, String mail, String telefono, String pago, String direccion}) { 
    this._nombre = nombre;
    this._user = user;
    this._imagen = imagen;
    this._mail = mail;
    this._telefono = telefono;
    this._pago = pago;
    this._direccion = direccion;
   
  }
  String get nombre => _nombre;
  String get user => _user;
  String get imagen => _imagen;
  String get mail => _mail;
  String get telefono => _telefono;
  String get pago => _pago;
  String get direccion => _direccion;
 
}