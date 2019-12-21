
class Unidades {

  List<Unidad> items = new List();

  Unidades();

  Unidades.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final unidad = new Unidad.fromJsonMap(item);
      items.add( unidad );
    }
  }

}


class Unidad {
  int    id;
  String nombre;
  int    idTracto;
  String tracto;
  int    idSemi;
  String semi;
  int    estado;

  Unidad({

    this.id,
    this.nombre,
    this.idTracto,
    this.tracto,
    this.idSemi,
    this.semi,
    this.estado,
  });

  Unidad.fromJsonMap( Map<String, dynamic> json ) {

    id               = json['id'];
    nombre           = json['nombre'];
    idTracto         = json['id_tracto'];
    tracto           = json['tracto'];
    idSemi           = json['id_semi'];
    semi             = json['semi'];
    estado           = json['estado'];
  }

  
  }

