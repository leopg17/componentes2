import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['Leo','Laura','Aniceto','Silvia','Wayner','Amanda','Alejandro','Priscilla',
  'Anita','Jose','Vero','Abe','Boschis','Henry','Carlos','Thamy'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes 2 Temp'),
      ),
      body: ListView(
        children: _crearItems(),
      ),

    );
  }

  List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();
    for(String opt in opciones){
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
           ..add(Divider());

    }
    return lista;
  }

  List<Widget> _crearItemsCorta(){

    return opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Amigo'),
            leading: Icon(Icons.people),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider()
        ],
      );

    }).toList();
  }
}