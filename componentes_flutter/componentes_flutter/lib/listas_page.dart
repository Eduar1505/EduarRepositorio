import 'package:flutter/material.dart';

class ListasPage extends StatelessWidget {
  const ListasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final usuario = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text('Listas: ${usuario['usuario']}'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(); // destruye la ultima navegacion
            Navigator.of(context).pop(); // destruye la ultima navegacion
          },
          child: const Text('Vovler'),
        ),
      ),
    );
  }
}
