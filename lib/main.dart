import 'package:flutter/material.dart';

import 'package:componentes2/src/pages/alert_page.dart';
import 'package:componentes2/src/routes/routes.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes App',
      //home: HomePage()
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings){

        return MaterialPageRoute(
          builder: (BuildContext context)=> AlertPage());
      },
    );
  }
}