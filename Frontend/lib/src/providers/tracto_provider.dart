
import 'dart:convert';

import 'package:operaciones/src/models/tracto_model.dart';
import 'package:http/http.dart' as http;

class TractoProvider{

  String _url ='192.168.0.20:8000';
  String _apikey='Token c3eaaedf51aa4071d8976cae5f5d739eab0eabc4';
//http://192.168.0.20:8000/api/tracto/

  Future<List<Tracto>> getTractos()async{

    final url= Uri.http(_url,'/api/tractos');
    final resp = await http.get(url,headers:{'Authorization':_apikey});
    print(resp.body);
    final decodeData= json.decode(resp.body);
    //print(decodeData);
    final tractos=new Tractos.fromJsonList(decodeData);
    //retorna una coleccion de tractos
    return tractos.items;
  }


}