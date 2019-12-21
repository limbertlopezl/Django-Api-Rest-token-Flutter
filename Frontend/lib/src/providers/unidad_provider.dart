
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:operaciones/src/models/unidades_model.dart';

class UnidadProvider{

  String _url ='192.168.0.20:8000';
  String _apikey='Token c3eaaedf51aa4071d8976cae5f5d739eab0eabc4';

  Future<List<Unidad>> getUnidades()async{

    final url= Uri.http(_url,'/api/unidades');
    final resp = await http.get(url,headers:{'Authorization':_apikey});
    //print(resp.body);
    final decodeData= json.decode(resp.body);
    //print(decodeData);
    final unidades=new Unidades.fromJsonList(decodeData);
    //retorna una coleccion de tractos
    return unidades.items;
  }
}