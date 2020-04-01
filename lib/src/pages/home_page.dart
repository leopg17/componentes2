
import 'package:flutter/material.dart';

import 'package:componentes2/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes 2'),
      ),
      body: _lista(),
      
    );
  }

  Widget _lista() {

    //print(menuProvider.opciones);
 /*    menuProvider.cargarData().then( (opciones){
      print('_lista');
      print (opciones);
    } ); */
    return FutureBuilder(
      future: menuProvider.cargarData() ,
      initialData: [],
      //Permite dibujar en la pantalla de nuestro dispositivo
      builder:(context, AsyncSnapshot<List<dynamic>> snapshot){

        print(snapshot.data);

        return ListView(
          children: _listaItems(snapshot.data),
        );

      },


    );



    
    /* return ListView(
      children: _listaItems(),
    ); */
  }

  List<Widget> _listaItems(List<dynamic> data) {
    return [
      ListTile(title: Text('Hola Banano')),
      Divider(),
      ListTile(title: Text('Hola Piña')),
      Divider(),
      ListTile(title: Text('Hola Melón')),
    ];

  }
}