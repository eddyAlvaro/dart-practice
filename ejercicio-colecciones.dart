void main() {
  //Colección de objetos para los restaurantes
  Set restaurantes = {
    {
      'nombre': 'El novillo alegre',
      'tipo': 'Argentina',
      'calificaciones': [4, 5, 2, 1, 2]
    },
    {
      'nombre': 'Baires Grill',
      'tipo': 'Argentina',
      'calificaciones': [3, 1, 3, 5, 5, 2, 3]
    },
    {
      'nombre': 'Mario Brothers',
      'tipo': 'Italiana',
      'calificaciones': [4, 3, 2, 1, 1]
    },
    {
      'nombre': 'Molto bene',
      'tipo': 'Italiana',
      'calificaciones': [4, 3, 1, 1, 5]
    }
  };

// función promedio que nos permite sacar el promedio de los valores existentes en un array, el cual pasaremos por parametros
  double promedio<List>(calificaciones) {
    double cont = 0;
    for (dynamic calificacion in calificaciones) {
      cont += calificacion;
    }
    double promedio = cont / calificaciones.length;

    return promedio;
  }

  //Coleccion con los tipos de restaurant
  Map first = {'Italiana': [], 'Argentina': [], 'Todos': []};

  //Coleccion que tendra los promedios por tipo
  Map rating = {};

  // bucle para recorrer el objeto de restaurantes
  for (dynamic restaurant in restaurantes) {
    //Condicion para juntar las calificaciones de los tipos que sean iguales
    switch (restaurant['tipo']) {
      case 'Italiana':
        //Bucle para recorrer el arreglo de las calificación para el tipo Italiana
        for (int i = 0; i < restaurant['calificaciones'].length; i++) {
          //Agregamos las calificaciones que estan en el arreglo a nuestro objeto first
          first['Italiana'].add(restaurant['calificaciones'][i]);
          first['Todos'].add(restaurant['calificaciones'][i]);
        }
        break;
      case 'Argentina':
        //Bucle para recorrer el arreglo de las calificación para el tipo Argentina
        for (int i = 0; i < restaurant['calificaciones'].length; i++) {
          //Agregamos las calificaciones que estan en el arreglo a nuestro objeto first
          first['Argentina'].add(restaurant['calificaciones'][i]);
          first['Todos'].add(restaurant['calificaciones'][i]);
        }
        break;
      default:
        break;
    }
    //en este objeto creamos la estructura deseada, utilizando la función promedio para calcular el promedio ded cada tipo
    rating = {
      'Italiana': promedio(first['Italiana']),
      'Argentina': promedio(first['Argentina']),
      'Todos': promedio(first['Todos']),
    };
  }

  //Imprimimos la colección resultante con los promedios
  print(rating);
}
