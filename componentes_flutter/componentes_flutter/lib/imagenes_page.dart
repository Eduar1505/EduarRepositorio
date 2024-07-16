import 'package:flutter/material.dart';

class ImagenesPage extends StatelessWidget {
  const ImagenesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes'),
      ),
      body: Column(
        children: [
          //imagenes locales

          const Image(
            image: AssetImage('assets/images/logo-is.jpg'),
            width: 200,
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 20),

          Image.asset(
            'assets/images/logo-is.jpg',
            width: 100,
          ),

          Container(
            color: Colors.red,
            height: 200,
            width: 400,
            child: const Image(
              height: 300,
              fit: BoxFit.fitHeight,
              image: NetworkImage(
                'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
