void main() {
  saludar(nombre: 'Juan');

  saludar2("Enrique", apellido: 'Alvarenga');

  suma(3, 5);
}

// Los tipos de las funciones, cumplen o siguen las mismas reglas
// que la definicion de variables

void saludar({required String nombre, String? apellido}) {
  //template String
  print('Hola $nombre $apellido');
}

void saludar2(String nombre, {String apellido = ''}) {
  //template String
  print('Hola $nombre $apellido');
}

double suma(int a, int b) {
  return (a + b).toDouble();
}
