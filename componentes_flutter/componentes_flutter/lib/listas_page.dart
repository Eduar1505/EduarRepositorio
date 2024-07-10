import 'package:componentes_flutter/widgets/item_postre.dart';
import 'package:flutter/material.dart';

class ListasPage extends StatelessWidget {
  ListasPage({super.key});

  final postres = [
    {
      'descripcion':
          'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It  ',
      'nombre': 'Torta de chocolate',
      'calorias': 400
    },
    {
      'descripcion':
          'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It ',
      'nombre': 'Helado',
      'calorias': 200
    },
  ];

  @override
  Widget build(BuildContext context) {
    final usuario = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
        appBar: AppBar(
          title: Text('Listas: ${usuario['usuario']}'),
        ),
        body: ListView.builder(
          // separatorBuilder: (BuildContext context, int index) =>
          //     Text('Sepacion entre cards'),
          itemCount: postres.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemPostre(postre: postres[index]);
          },
        ));
  }
}
