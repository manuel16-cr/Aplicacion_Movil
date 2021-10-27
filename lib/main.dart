import 'package:flutter/material.dart';
import 'home.dart';
import 'datos.dart';

void main() => runApp(Aplication());

class Aplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación Movil',
      routes:{
        '/':(BuildContext context) => Home() ,
        'perfil': (BuildContext context) => Datos()
      },
      theme: ThemeData(
        primaryColor: Color(0xFF04B404),
        accentColor: Color(0xFFF0D303)
        )
    );
  }

}