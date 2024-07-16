import 'package:componentes_flutter/widgets/custom_form_input.dart';
import 'package:flutter/material.dart';

class InputsPage extends StatelessWidget {
  InputsPage({super.key});

  final nombreController = TextEditingController();
  final correoController = TextEditingController();
  final telefonoController = TextEditingController();
  final contraseniaController = TextEditingController();

  //el controlador del Form
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              CustomFormInput(
                label: 'Nombre',
                controller: nombreController,
                validator: (valor) {
                  if (valor == null || valor.isEmpty) {
                    return 'El nombre es obligatorio';
                  }
                  return null;
                },
              ),
              CustomFormInput(
                controller: correoController,
                label: 'Correo',
              ),
              CustomFormInput(
                controller: telefonoController,
                label: 'Telefono',
              ),
              CustomFormInput(
                controller: contraseniaController,
                label: 'Contraseña',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () {
          if (!formkey.currentState!.validate()) return;

          final datos = {
            'nombre': nombreController.text,
            'correo': correoController.text,
            'telefono': telefonoController.text,
            'contrasenia': contraseniaController.text,
          };

          print(datos);

          // mandar a guardar
        },
      ),
    );
  }
}
