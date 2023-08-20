void main() {
  int coffew = 0;
  int coffedw = 0;
  int coffef = 0;
  int maxCoffe = 5;

  // El while se va ejecutando mientras la expresión sea true
  // Para que este ciclo no sea infinito, tendremos que crear un limitante que cambie el estado  de la expresión
  while (maxCoffe != coffew) {
    //Incrementamos la variable coffe +1 cada vez que el bucle se reinicia
    coffew++;
    //Imprimimos un texto con la variable incrementada +1
    print('Cantidad de tasas: $coffew');
  }

  //En este caso el do hace que el bloque se ejecute primero
  do {
    //La primera vez esto se va a ejecutar si o si aunque el ciclo while ya no se cumpla
    coffedw++;
    print('Cantidad de tasas do: $coffedw');
    //Si esto ya no se cumple entonces el do ya no se seguirá ejecutando
  } while (coffedw < maxCoffe);

  //El ciclo for necesita un contador inicial, una valición que hara que el ciclo continue o se detenga y por ultimo un incremento o decremento del contador
  //El contador vendria a  ser la posición inicial y por defecto en programación la posición inicial es 0
  for (int i = 0; i < maxCoffe; i++) {
    coffef = i;
    print('La cantidad de cafe for: $coffef');
  }
}
