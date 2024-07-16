import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key,
    required this.label,
    required this.controller,
  });

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      // onChanged: (newValue) {
      //   print(newValue);
      // },
      // onTap: () {
      //   print('onTap');
      // },
      controller: controller,
      keyboardType: TextInputType.text,
      maxLength: 20,
      maxLines: 1,
      decoration: InputDecoration(
        hintText: 'Ingrese su nombre',
        label: Text(label),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        // suffix: Icon(Icons.person),
        errorText: null, //'El nombre es obligatorio',
        suffixIcon: const Icon(Icons.remove_red_eye),
        prefixIcon: const Icon(Icons.person),
      ),
    );
  }
}
