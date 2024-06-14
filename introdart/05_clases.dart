import 'Mascota.dart';

void main() {
  final mascota1 = Mascota(nombre: 'Apolo', raza: 'Terrier');

  final mascota2 = Mascota.soloNombre(nombre: 'Polar');

  final mascota3 = Mascota.conEdad(2);

  final datos = {'nombre': 'Pulgas', 'raza': 'Aguacatero'};

  final mascota4 = Mascota.fromMap(datos);

  // final mascota5 = Mascota.posicional();

  print(mascota4.toString());

  // mascota1.setEdad(2);

  try {
    //seteando un valor
    mascota2.edad = 4;

    mascota1.edad = 2; //asignación
  } catch (error) {
    print(error);
  }

  // print(mascota1.nombre);
  // print(mascota1.raza);
  // // print(mascota1.getEdad());
  print('Objeto de la instancia: ${mascota1.hashCode} -  ${mascota1.edad}');
  print('Objeto de la instancia: ${mascota2.hashCode} -  ${mascota2.edad}');

  // print(mascota1.toString());

  // print(mascota1)
}
