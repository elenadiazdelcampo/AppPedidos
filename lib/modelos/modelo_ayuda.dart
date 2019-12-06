class ModeloAyuda {
  String _nombre;
  String _subnombre;


  ModeloAyuda({String nombre, String subnombre}) { //, String imagen
    this._nombre = nombre;
    this._subnombre = subnombre;
   
  }
  String get nombre => _nombre;
  String get subnombre => _subnombre;
 
}