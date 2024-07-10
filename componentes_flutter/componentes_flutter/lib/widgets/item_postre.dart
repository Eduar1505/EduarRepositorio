import 'package:flutter/material.dart';

class ItemPostre extends StatefulWidget {
  ItemPostre({super.key, required this.postre});

  final Map<String, dynamic> postre;

  @override
  State<ItemPostre> createState() => _ItemPostreState();
}

class _ItemPostreState extends State<ItemPostre> {
  bool verCompleto = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Colors.red[int.parse(postre['calorias'].toString())],
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ExpansionTile(
          title: Text(
            '${widget.postre['nombre']}',
            style: const TextStyle(fontSize: 30),
          ),
          children: [
            Text('${widget.postre['calorias']} calorias',
                style: const TextStyle(fontSize: 20)),
            Text(!verCompleto && widget.postre['descripcion'].length > 50
                ? '${widget.postre['descripcion'].substring(0, 50) + '...'}'
                : widget.postre['descripcion']),
            TextButton(
                onPressed: () {
                  verCompleto = !verCompleto;

                  setState(() {});
                },
                child: const Text('Ver mas'))
          ],
        ),
      ),
    );
  }
}
