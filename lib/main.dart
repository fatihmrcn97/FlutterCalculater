import 'package:flutter/material.dart';
import './home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return new MaterialApp(
      title: "Calculater App",
      theme: new ThemeData(
        primarySwatch: Colors.amber
      ),
      home: new HomePage(),
   );
  }
 
}
