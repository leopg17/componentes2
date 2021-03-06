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
          _cardTipo1(),
          SizedBox(height:30),
          _cardTipo2(),
          SizedBox(height:30),
          _cardTipo1(),
          SizedBox(height:30),
          _cardTipo2(),
          SizedBox(height:30),
          _cardTipo1(),
          SizedBox(height:30),
          _cardTipo2(),
          SizedBox(height:30),
          _cardTipo1(),
          SizedBox(height:30),
          _cardTipo2(),
          SizedBox(height:30),
          _cardTipo1(),
          SizedBox(height:30),
          _cardTipo2(),
          SizedBox(height:30),
          ],
      ),
      
    );
  }

  Widget _cardTipo1(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
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

  Widget _cardTipo2(){
    final card = Container(
      child: Column(
        children: <Widget>[

          FadeInImage(
            image: NetworkImage('https://cocineroaficionado.files.wordpress.com/2011/10/carbones.jpg?w=584'),
            placeholder: AssetImage('assets/wait.gif'),
            fadeInDuration: Duration( milliseconds:200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage('https://pixabay.com/get/54e3dc454d57a814f6d1867dda35367b1d39dfe45b597741_1920.jpg'),
          // ),
          Container(
            padding:EdgeInsets.all(10.0),
            child: Text('Carbon'), 
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0),
          )
        ],
        //color: Colors.red
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,

      ),
    );
  }

}

