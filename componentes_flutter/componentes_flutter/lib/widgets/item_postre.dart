import 'package:flutter/material.dart';

class ItemPostre extends StatelessWidget {
  const ItemPostre({super.key, required this.postre});

  final Map<String, dynamic> postre;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red[int.parse(postre['calorias'].toString())],
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${postre['nombre']}',
              style: const TextStyle(fontSize: 30),
            ),
            Text('${postre['calorias']} calorias',
                style: const TextStyle(fontSize: 20))
          ],
        ),
      ),
    );
  }
}
