void main() {
  //Listas

  final List<String?> postres = [
    'pie de manzana',
    'galletas',
    'donas',
    'pastel 3 leches',
    'brownies'
  ];

  postres.add("pie de limon");
//   postres.add(20);
//   postres.add([true,true,false]);

//   postres = [];
  print(postres[0]);

  //for (final postre in postres) {
  //     print(postre);
  //}
  // final copia_postres = postres; //❌ no es una copia

  //? Desestructuración, con el operador spread
  final copia_postres = [...postres]; // ✅ si es una copia

  copia_postres.remove('galletas');

  print(postres);
  print(copia_postres);

  //callback / función anonima
  // postres.forEach((postre) {
  //   print(postre);
  // });

  final numeros = [1, 2, 3, 4, 5];

  //? Otra forma de hacer copias
  final supuestos_postres = postres.map((postre) {
    // postre = 'brocoli';

    return postre;
  }).toList();

  final pares = numeros.map((valor) {
    if (valor % 2 != 0) return valor * 2;
    return valor;
  }).toList();

  final impares = numeros.where((valor) {
    return (valor % 2 != 0);
  }).toList();

  print(numeros);
  print(pares);
  print(impares);

  print(supuestos_postres);
}
