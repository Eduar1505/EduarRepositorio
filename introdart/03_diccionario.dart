void main() {
  final Map<String, dynamic> persona = {
    'nombre': 'Eduar',
    'edad': 19,
    'comidas_favoritas': ['Pizza', 'Sopas'],
    'es_mayor': true,
    'geo': {'lat': 14.123123, 'lng': -87.123123}
  };

  final roles = {
    1: 'Admin',
    2: 'Cajero',
  };
  print(roles);
  print(persona['nombre']);

  persona['nombre'] = 'Ernesto';
  persona['direccion'] = "UNAH-VS";

  persona.remove('geo'); //eliminar una propiedad

  // permite agregar mas propiedades al Map
  persona.addAll({
    'telefono': '123456789',
    'edad': 20,
    'es_mayor': false,
  });

  // se puede hacer una copia
  final copia = {...persona};

  // print(persona);
  print(copia);
  persona.clear(); //limpiar el Map

  persona.entries.forEach((element) {
    print(element.key);
    print(element.value);
  });
}
