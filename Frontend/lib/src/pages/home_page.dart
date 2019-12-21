import 'package:flutter/material.dart';
import 'package:operaciones/src/models/tracto_model.dart';
import 'package:operaciones/src/providers/tracto_provider.dart';
import 'package:operaciones/src/providers/unidad_provider.dart';

class HomePage extends StatelessWidget {
  
  final tractoProvider= new TractoProvider();
  final unidadProvider= new UnidadProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Operaciones Transporte'),
        backgroundColor: Colors.indigoAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          )
        ],
      ),
       body: Container(
         child: _cargarUnidades(context)        
       )
       );
  }

  Widget _cargarTractos(BuildContext context){
  
      return FutureBuilder(
      future: tractoProvider.getTractos(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot){

        if(snapshot.hasData) {
         return ListView.builder(
          itemCount: snapshot.data.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(snapshot.data[index].nombre),
              subtitle: Text(snapshot.data[index].placa),
       
            );
          },

        );
        }else{
          return Container(
            height: 400.0,
            child: Center(
              child:CircularProgressIndicator() ,
            ),
          );
        }
      },
    );
  }

  Widget _cargarUnidades(BuildContext context){
  
      return FutureBuilder(
      future: unidadProvider.getUnidades(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot){

        if(snapshot.hasData) {
         return ListView.builder(
          itemCount: snapshot.data.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(snapshot.data[index].nombre),
              subtitle: Text('Tracto: '+snapshot.data[index].tracto)
            );
          },

        );
        }else{
          return Container(
            height: 400.0,
            child: Center(
              child:CircularProgressIndicator() ,
            ),
          );
        }
      },
    );
  }




  Widget _listarTracto(List<Tracto> tractos){
    final listaTracto=tractoProvider.getTractos();

        return ListView.builder(
          itemCount: tractos.length,
          itemBuilder: (context,index){
            tractos[index].marca;
          },

        );
      
  }

}