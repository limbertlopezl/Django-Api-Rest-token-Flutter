
class Tractos {

  List<Tracto> items = new List();

  Tractos();

  Tractos.fromJsonList( List<dynamic> jsonList  ) {

    if ( jsonList == null ) return;

    for ( var item in jsonList  ) {
      final tracto = new Tracto.fromJsonMap(item);
      items.add( tracto );
    }
  }

}


class Tracto {

  int    id;
  String nombre;
  String marca;
  String placa;
  String color;
  String modelo;
  String anio;
  String nroEjes;
  String chasis;
  String capacidad;
  int    estado;

  Tracto({

    this.id,
    this.nombre,
    this.marca,
    this.placa,
    this.color,
    this.modelo,
    this.anio,
    this.nroEjes,
    this.chasis,
    this.capacidad,
    this.estado,
  });

  Tracto.fromJsonMap( Map<String, dynamic> json ) {

    id               = json['id'];
    nombre           = json['nombre'];
    marca            = json['marca'];
    placa            = json['placa'];
    color            = json['color'];
    modelo           = json['modelo'];
    anio             = json['anio'];
    nroEjes          = json['nro_ejes'];
    chasis           = json['chasis'];
    capacidad        = json['capacidad'];
    estado           = json['estado'];
  }

  
  }

