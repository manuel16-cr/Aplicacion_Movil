import 'package:flutter/material.dart';
import 'package:flutter_application_1/coidgoqr.dart';
import 'package:flutter_application_1/inico.dart';
import 'encuesta.dart';
import 'datos.dart';

class Home extends StatefulWidget{
  HomeState createState() => HomeState();
}

class HomeState extends State<Home>{
  int _selectDrawerItem = 0;
  _getDrawerItemWidget(int pos){
    switch(pos){
      case 0: return Inicio();
      case 1: return Datos();
      case 2: return Codigo();
      case 3: return Encuesta();
    }
  }

  _onSelectItem(int pos){
    Navigator.of(context).pop();
    setState(() {
      _selectDrawerItem = pos;
        });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicación Movil'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Manuel Contreras'), 
              accountEmail: Text('201810532@tese.edu.mx'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('M', style: TextStyle(fontSize: 40.0),
                ),
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              selected: (0 == _selectDrawerItem),
              onTap: (){
                _onSelectItem(0);
              },
            ),
            ListTile(
              title: Text('Mi perfil'),
              leading: Icon(Icons.person),
              selected: (1 == _selectDrawerItem),
              onTap: (){
                _onSelectItem(1);
              },
            ),
            ListTile(
              title: Text('Codigo QR'),
              leading: Icon(Icons.qr_code),
              selected: (2 == _selectDrawerItem),
              onTap: (){
                _onSelectItem(2);
              },
            ),
            ListTile(
              title: Text('Encuesta'),
              leading: Icon(Icons.question_answer),
              selected: (3 == _selectDrawerItem),
              onTap: (){
                _onSelectItem(3);
              },
            ),
            ListTile(
              title: Text('Cerrar Sesion'),
              leading: Icon(Icons.close),
              onTap: (){

              },
            ),
          ],
        ),
      ),
      body: _getDrawerItemWidget(_selectDrawerItem),
    );
  } 
}