import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, required this.contador});

  int contador;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final estilo = TextStyle(fontSize: 40, color: Colors.indigo);

    return Scaffold(
      appBar: AppBar(
        //centerTitle: false,
        // ignore: prefer_const_constructors
        backgroundColor: Color.fromARGB(210, 237, 146, 11),
        title: const Align(
          alignment: Alignment.topCenter,
          child: Text('MI PRIMER APP'),
        ),
      ),

      drawer: const Drawer(),
      // ignore: avoid_unnecessary_containers
      body: Center(
        child: SizedBox(
          // color: Colors.red,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hizo tantas veces clic: ",
                style: estilo.copyWith(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                '${widget.contador} clics..',
                style: estilo,
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // if (contador > 15) return;
          widget.contador++;
          // notifica al widget  que sus  propiedades cambian
          setState(() {});
        },
        // ignore: prefer_const_constructors
        child: Icon(
          Icons.plus_one,
          color: const Color.fromARGB(248, 239, 5, 52),
        ),
      ),
    );
  }
}
