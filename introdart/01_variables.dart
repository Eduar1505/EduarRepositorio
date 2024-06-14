void main() {
  String nombre = 'Juan';
//   dynamic apellido = 40; // permite la asignacion de cualquier valor y se puede volver a asignar y cambiar el tipo de dato

  final String apellido;

  final nulish = null;

  print(nulish);

  //Null Safety
  String? comidaFavorita = null; // permite almancenar un string o un null

  const String host =
      'https://unah.edu.hn'; // no se puede declarar sin asignar un valor (es inmutable)

//   nombre = 10; // no se puede cambiar el tipo de dato
  apellido = "Alvarenga";
  print(apellido);
//   apelido = ''; // ya no puede cambiar

  final int edad = 30;
//   edad = 9;
  bool esMayor;
}