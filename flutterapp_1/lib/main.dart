import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: non_constant_identifier_names, use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  // ignore: unused_element
  @override
  Widget build(BuildContext context) {
    //Se usa MaterialApp por el package importado
    return MaterialApp(
      title: 'Mi primer app',
      //theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          //centerTitle: false,
          // ignore: prefer_const_constructors
          backgroundColor: Color.fromARGB(210, 25, 81, 21),

          title: const Align(
            alignment: Alignment.topCenter,
            child: Text('Bienvenidos'),
          ),
        ),
        drawer: const Drawer(),
        body: const Center(child: Text('Hola Mundo')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          // ignore: prefer_const_constructors
          child: Icon(
            Icons.add_circle_outline_sharp,
            color: const Color.fromARGB(249, 72, 27, 206),
          ),
        ),
      ),
    );
  }
}
