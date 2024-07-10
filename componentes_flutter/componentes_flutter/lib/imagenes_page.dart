import 'package:flutter/material.dart';

class ImagenesPage extends StatelessWidget {
  const ImagenesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes'),
      ),
      body: const Column(
        children: [
          //imagenes locales

          Image(
            image: AssetImage('assets/images/logo-is.jpg'),
            width: 200,
            fit: BoxFit.cover,
          )

          //imagenes de internet
        ],
      ),
    );
  }
}
