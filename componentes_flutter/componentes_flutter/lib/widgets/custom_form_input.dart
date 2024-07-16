import 'package:flutter/material.dart';

class CustomFormInput extends StatelessWidget {
  const CustomFormInput({
    super.key,
    required this.label,
    required this.controller,
    this.validator,
  });

  final String label;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
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
