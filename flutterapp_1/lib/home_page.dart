import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.contador, required this.titulo});

  final int contador;
  final String titulo;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int nuevoContador = 0;

  @override
  void initState() {
    super.initState();
    nuevoContador = widget.contador;
  }

  @override
  Widget build(BuildContext context) {
    const estilo = TextStyle(fontSize: 40, color: Colors.indigo);

    return Scaffold(
      appBar: AppBar(
        // centerTitle: false,
        backgroundColor: Color.fromARGB(255, 53, 9, 232),
        // backgroundColor: Color(0xff009688),
        title: Text(
          widget.titulo,
          style: TextStyle(color: Colors.indigo[100]),
        ),
      ),
      drawer: const Drawer(),
      body: Center(
        child: SizedBox(
          // color: Colors.red,
          width: MediaQuery.of(context).size.width,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Hizo tantas veces clic',
                style: estilo.copyWith(
                    fontSize: nuevoContador.toDouble(),
                    fontWeight: FontWeight.w300),
              ),
              Text(
                '$nuevoContador clics',
                style: estilo,
              ),
            ],
          ),
        ),
      ),
      // floatingActionButtonLocation:
      //     FloatingActionButtonLocation.miniCenterTop,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // if (contador > 14) return;

          // notifica al widget que sus propiedades cambiaron
          setState(() {});

          nuevoContador++;
        },
        child: Icon(
          Icons.plus_one,
          color: Colors.pink[800],
        ),
      ),
    );
  }
}
