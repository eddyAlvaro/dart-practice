//VARIABLES - espacio en memoria
//Para crear una variable definimos tipo, nombre y el valor

void main() {
  //TIPOS DE DATOS
  void typeData() {
    // var nos sirve para inferir el tipo de dato de una variable,
    // var infiera que el tipo de dato es string
    var text = 'Texto'; //string
    print(text);
    // final y const no permiten que su valor sea reasignado, siempre son constantes
    // D igual modo, estos dos infieren el tipo de dato
    final pi = 3.14; //double
    const name = 'Eddy'; //string
    print('El valor de PI es: ${pi}');
    print('Mi nombre es: ${name}');

    // dynamic, no es muy frecuente su uso
    // Este permite cambiar el tipo de dato inferido y tambien reasignar su valor
    // Este tipo de datos requiere de mucha responsabilidad
    // Se usa mayormente en colecciones
    dynamic text2 = 'Text';
    text2 = 1;
    print('Esto es un texto? ${text2}');
  }

  ///bool///
  void booleans() {
    bool estaSoleado = true;
    //Cambiar el valor de una variable
    estaSoleado = false;
    print('Ejemplo de booleano: ${estaSoleado}');
  }

  ///Numbers///
  void numbers() {
    //Una variable de tipo entero unicamente puede recibir enteros
    int age = 21;
    //Una variable de tipo decimal puede recibir enteros y decimales
    double height = 1.65;
    print('age: ${age}');
    print('height: ${height}');
  }

  ///Strings///
  void strings() {
    // El tipo de las variables string empieza com mayuscula
    String country = 'Perú';
    print('Nombre de mi país: ${country}');

    // Concatenación, usamos el simbolo + para unir diferentes textos en una variable
    String concat = 'test' + ' ' + 'concatenación' + country;
    print('primer string' + concat);
    // Interpolación, se usa el simbolo ${} para poder colocar valores dentro de un mismo string ""
    String interpol = 'test interpolación ${country}';
    print('primer string ${interpol}');

    // Caracteres especiales
    // para poder usar caracteres especiales como '' dentro del string sin romperlo usamos el \ antes de los caracteres
    print('Ejemplo de caracteres especiales,\n \"${country}\"');

    // Funciones que podemos usar en strings
    print(country.toUpperCase());
  }

  ///Collections///
  void collections() {
    //El tipo de datos de la lista se coloca como genericos <TIPO>
    //
    List<String> friends = ['Juan', 'Ramiro', 'Alejandro'];
    print('Mis amigos son : ${friends}');
  }

  /// manipulación de variables///
  void manipulacion() {
    int edad1 = 21;
    // Redeclaración de variable
    edad1 = 22;
    // Esto asigna el valor de edad1 a edad2 primero y luego el valor de edad1 incrementa en +1
    int edad2 = edad1++;
    // res: edad2 = 22 y edad1 = 23
    print("la edad 1 es : ${edad1}");
    print("la edad 2 es : ${edad2}");

    //  Primero aumenta el valor de edad1 +1 y luego el valor incrementado lo asigna a edad 2
    int edad3 = ++edad1;
    print("la edad 1 es : ${edad1}");
    print("la edad 3 es : ${edad3}");

    //Cuando colocamos un operador antes de la variable, esta se suma primero y luego se asigna
    //Cuando colocamos un operador despues de la variable, esta se asigna primero y luego se suma
    //Funciona de igual forma con resta --
  }

  // / Conversión de tipos ///
  void conversion() {
    String texto = '22.2';
    double numero = double.parse(texto);
    print('El texto ya es un numero ${numero}');

    //Para cambiar los tipos de dats usamos metodos como
    // toString
    // int.parse
    // double.parse
  }

  booleans();
  numbers();
  strings();
  collections();
  typeData();
  manipulacion();
  conversion();
}
