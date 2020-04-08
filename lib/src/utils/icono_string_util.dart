import 'package:flutter/material.dart';

//Funcion que permite tomar los iconos de un json o un map

final _icons = <String , IconData>{

  'add_alert'     : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open'   : Icons.folder_open,
  'donut_large'   : Icons.donut_large,
  'input'         : Icons.input,

};

Icon getIcon(String nombreIcono){

  return Icon( _icons[nombreIcono], color: Colors.blue);
}

