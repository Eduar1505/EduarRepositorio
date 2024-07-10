import 'package:componentes_flutter/home_page.dart';
import 'package:componentes_flutter/imagenes_page.dart';
import 'package:componentes_flutter/listas_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Componentes',
      // home: const HomePage(),
      initialRoute: 'home', // debe ser una ruta previamente definida
      routes: {
        'home': (context) => const HomePage(),
        'listas': (context) => ListasPage()
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.error,
                    size: 100,
                  ),
                  Text(
                    'La Ruta " ${settings.name} " No Existe...',
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
