class Mascota {
  //Propiedades

  // "late" le indica a clase, que la propiedad, tendrá un valor en el futuro
  // late String nombre;
  late String? nombre;
  late String? raza;
  int _edad = 0; // Privada

  //constructor

  // Mascota(String nombre, String raza, int edad) {
  //   this.nombre = nombre;
  //   this.raza = raza;
  //   this._edad = edad;
  // }

// tradicional
  Mascota({
    required this.nombre,
    required this.raza,
    // this._edad = 0,
  });

  //* constructor factory
  factory Mascota.fromMap(Map<String, dynamic> map) {
    // requisito: es que debe existir previamente un construcor
    // el cual pueda utilizar para devolver dicha instancia
    return Mascota(nombre: map['nombre'], raza: map['raza']);
  }

  //* constructores con nombre
  Mascota.soloNombre({required this.nombre});

  Mascota.conEdad(this._edad);

// los "[]", convierten los argumentos posicionales en "opcionales"
// hay que permitir el valor de null en ellos.
  Mascota.posicional([this.nombre, this.raza]);

//sobreescribir el metodo
  @override
  String toString() {
    // return super.toString();
    return 'Hola soy ${this.nombre} soy un $raza y tengo $_edad años';
  }

  // comportamientos / metodos

  // int getEdad() {
  //   return this._edad;
  // }

  // void setEdad(int edad) {
  //   this._edad = edad;
  // }

  // lambda function
  int get edad => this._edad; // getter

  set edad(int edad) {
    if (edad <= 0) {
      // Generar una excepcion (Error)
      throw Exception('La edad no es válida');
    }

    this._edad = edad;
  } // setter
}
