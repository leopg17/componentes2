import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage('https://dam.smashmexico.com.mx/wp-content/uploads/2018/11/wolverinebio_portada.gif'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('LP'),
              backgroundColor: Colors.yellow,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage('https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F6%2F2019%2F06%2Fweapon-plus2-2000.jpg&q=85'),
          placeholder: AssetImage('assets/wait.gif'),
          fadeInDuration: Duration(milliseconds: 200),          
        ),
      ),
    );
  }
}