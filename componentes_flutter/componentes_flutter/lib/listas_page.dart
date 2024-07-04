import 'package:componentes_flutter/widgets/item_postre.dart';
import 'package:flutter/material.dart';

class ListasPage extends StatelessWidget {
  ListasPage({super.key});

  final postres = [
    {'nombre': 'Torta de chocolate', 'calorias': 400},
    {'nombre': 'Helado', 'calorias': 200},
    {'nombre': 'Galletas', 'calorias': 300},
    {'nombre': 'Cupcake', 'calorias': 500},
    {'nombre': 'Brownie', 'calorias': 450},
    {'nombre': 'Donas', 'calorias': 350},
    {'nombre': 'Pastel', 'calorias': 600},
    {'nombre': 'Cheesecake', 'calorias': 700},
    {'nombre': 'Churros', 'calorias': 250},
    {'nombre': 'Muffin', 'calorias': 350},
    {'nombre': 'Pie', 'calorias': 500},
    {'nombre': 'Tiramisu', 'calorias': 600},
    {'nombre': 'Macarons', 'calorias': 300},
    {'nombre': 'Crepas', 'calorias': 400},
    {'nombre': 'Flan', 'calorias': 350},
    {'nombre': 'Cupcake', 'calorias': 500},
    {'nombre': 'Brownie', 'calorias': 450},
    {'nombre': 'Donas', 'calorias': 350},
    {'nombre': 'Pastel', 'calorias': 600},
    {'nombre': 'Cheesecake', 'calorias': 700},
    {'nombre': 'Churros', 'calorias': 250},
    {'nombre': 'Muffin', 'calorias': 350},
    {'nombre': 'Pie', 'calorias': 500},
    {'nombre': 'Tiramisu', 'calorias': 600},
    {'nombre': 'Macarons', 'calorias': 300},
    {'nombre': 'Crepas', 'calorias': 400},
    {'nombre': 'Flan', 'calorias': 350},
    {'nombre': 'Cupcake', 'calorias': 500},
    {'nombre': 'Brownie', 'calorias': 450},
    {'nombre': 'Donas', 'calorias': 350},
    {'nombre': 'Pastel', 'calorias': 600},
    {'nombre': 'Cheesecake', 'calorias': 700},
    {'nombre': 'Churros', 'calorias': 250},
    {'nombre': 'Muffin', 'calorias': 350},
    {'nombre': 'Pie', 'calorias': 500},
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
