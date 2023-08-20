void main() {
  void listas() {
    List<String> friends;
    friends = ['Pedro', 'Mario', 'Leo'];
    //El metodo isEmpty me devuelve true o false dependiendo a si mi lista tiene valores o no
    friends.isEmpty;

    //El metodo length me permite saber la cantidad de datos que hay dentro de una lista []
    friends.length;

    //El metodo add permite agregar un dato a la lista, este valor agregado debe ser del mismo tipo que acepta la lista
    friends.add('Armando');

    //El metodo remove sirve para eliminar la concidencia en la lista
    friends.remove('Pedro');

    //El metodo insert, nos permite isnertar un valor en la posición que se este indicando
    friends.insert(1, 'Julio');

    //El metodo clear nos permite limpiar los datos dentro de la lista dejandola vacia
    friends.clear;

    print(friends);
  }

  void sets() {
    //Los datos dentro de un set no se pueden repetir
    Set<String> countrys;
    countrys = {'Argentina', 'Peru', 'Colombia'};

    //Cuando queremos añadir un valor ya existente, no dará error, pero cuando recorremos la colección nos daremos cuenta que unicamente existira 1 coincidencia
    countrys.add('Peru');

    //para una colección set tendremos que usar el metodo elementAt() y pasarle la posición si queremos obtener uno de sus valores
    //Aqui le estoy indicando que me devuelva el valor en la posición 1
    countrys.elementAt(1);

    print(countrys);
  }

  void mapasObjetos() {
    //Es recomendable usar dynamic para indicar que el valor de las keys sera de cualquier tipo (String, int, double,etc)
    Map<String, dynamic> persons = {
      'nombre': 'Eddy',
      'edad': 22,
    };
    //Este metodo nos devuelve todas las llaves dentro de la colección
    persons.keys;
    //Este metodo nos devuelve todos los valores que hay dentro de la colección
    persons.values;

    //Para obtener un valor específico dentro de la colección por ejemplo el nombre tenemos la siguiente sintaxis
    //Aqui indicamos que de la colección personas quiero que me obtengas el valor de la key 'nombre'
    persons['nombre'];

    //Si intentamos acceder al valor de una key que no existe, este nos devolverá un null
    persons['nombres'];

    print(persons);
  }

  void mapasObjetos2() {
    Map restaurant = {
      'name': 'Barbaros',
      //Podemo utilizar una colección dentro de otra colección
      'stars': [3, 5, 1, 2, 3]
    };
    //El metodo addAll nos permite añadir un nuevo elemento a la colección map
    restaurant.addAll({'aforo': 22});
    print(restaurant);

    List<String> primaryColors = ['rojo', 'verde', 'azul'];
    List<String> secondaryColors = ['purple', 'orange', 'skyblue'];

    //Esta es una forma con la que podemos juntar dos colecciones
    //resultado: [purple, orange, skyblue, rojo, verde, azul]
    secondaryColors.addAll(primaryColors);
    print('lista secondaryColors: $secondaryColors');

    //Otra forma es usando ... para juntar los valores de las dos listas.
    //Si no colocamos ..., se añadirán como colecciones distintas
    List<String> mixColors = [...secondaryColors, ...primaryColors];
    print('lista mix: $mixColors');
  }

  void flujoColeccion() {
    bool addYellow = true;
    // bool addBlue = false;
    List<String> colors = [
      'red',
      'green',
      //De acuerdo a esta condición podemos hacer que se añadan valores a nuestra colección
      if (addYellow) 'yellow',
      // if (addBlue) 'blue',
    ];

    List<String> mix = [
      'orange',
      'purple',
      //Podremos iterar los valores dentro de una colección distinta con un ciclo para añadir sus valores
      for (int i = 0; i < colors.length; i++) colors[i]
    ];

    print(colors);
    print('Mi mix con for $mix');
  }

  mapasObjetos();
  mapasObjetos2();
  flujoColeccion();
}
