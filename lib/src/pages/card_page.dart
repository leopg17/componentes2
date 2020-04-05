import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardsPage'),

      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1()
          ],
      ),
      
    );
  }

  Widget _cardTipo1(){
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.local_dining, color: Colors.blue),
            title: Text('Brownie'),
            subtitle: Text('Es una deliciosa receta hecha a la parrilla con cerveza oscura y Hersheys'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: (){},
                ),
              FlatButton(
                child: Text('OK'),
                onPressed: (){},
              ),
            ],

          ),
        ],
      ),
    );
  }
}