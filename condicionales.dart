void main() {
  int pets = 0;

  ///IF///
  if (pets == 0) {
    //La expresión del if() debe ser true para ejecutar su contenido
    print('No hay mascotas');
  } else {
    //Esto te ejecuta solo si la expresión del if no se cumple
    print('Si hay mascotas');
  }
  //Estos controles de flujo pueden anidarse (mo muy recomendado)

  ///SWITCH///
  // La expresión se compara con cada uno de los casos y ejecuta unicamente el caso que sea igual a la expresión
  switch (pets) {
    case 0:
      print('No hay mascotas');
      break;
    case 1:
      print('Hay solo una mascota');
      break;
    default:
      print('Tienes varias mascotas');
  }
}
