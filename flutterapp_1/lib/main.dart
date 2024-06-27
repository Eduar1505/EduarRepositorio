import 'package:flutter/material.dart';
import 'package:flutterapp_1/home_page.dart';

void main() {
  runApp(MyApp());
}

// 1. Statefullwidget (con estado)
// 2. Statelesswidget (sin estado)

// ignore: non_constant_identifier_names, use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  int contador = 0;

  // ignore: unused_element
  @override
  Widget build(BuildContext context) {
    //Se usa MaterialApp por el package importado
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Mi primer app',
      // theme: ThemeData(),
      // darkTheme: ThemeData.dark(),
      //theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: HomePage(contador: 40),
    );
  }
}
