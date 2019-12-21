import 'package:flutter/material.dart';


import 'package:operaciones/src/pages/home_page.dart';


void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Operaciones',
      initialRoute: '/',
      routes: {
        '/'   : (BuildContext context) => HomePage(),
      },
    );
  }  
}