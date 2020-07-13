import 'package:flutter/material.dart';

//Own Imports

import 'homepage.dart';
void main (){
  runApp(MaterialApp(
  title:'Addidas',
  theme: ThemeData(
    primaryColor: Colors.black
  ),
  debugShowCheckedModeBanner: false,
  home: HomePage()
  ));
}