import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Componentes'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('listas', arguments: {
                  'usuario': 'EduarVentura',
                  'rol': 'Estudiante',
                  'anio': 2024
                });
                // Navigator.pushNamed(context, 'listas');
              },
              child: const Text('Listas'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Imagenes'),
            ),
            const SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Inputs'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: const Text('Menus'),
            ),
            const SizedBox(height: 20),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.http),
            )
          ],
        ),
      ),
    );
  }
}
