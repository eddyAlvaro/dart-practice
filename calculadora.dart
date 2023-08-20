void main() {
  double valor_1 = 2;
  double valor_2 = 34;
  List<double> values = [20, 30, 12, 32, 54];
  double result;
  Operation operations = Operation.Sumatory;
  void suma(a, b) {
    result = a + b;
    print('El resultado de la operación es: $result');
  }

  void resta(a, b) {
    result = a - b;
    print(
        result >= 0 ? 'El resultado de la operación es: $result' : 'NEGATIVO');
  }

  void division(a, b) {
    result = a / b;
    print('El resultado de la operación es: $result');
  }

  void multiplicacion(a, b) {
    result = valor_1 * valor_2;
    print('El resultado de la operación es: $result');
  }

  void modulo(a, b) {
    result = valor_1 % valor_2;
    print('El resultado de la operación es: $result');
  }

  void factorial(a) {
    if (a < 0) {
      print('No es posible sacar el factorial de $a');
    } else if (a == 0) {
      print('El factorial de $a es 1');
    } else {
      result = 1;
      for (int i = 0; i < a; i++) {
        result = result * (i + 1);
      }
      print('El factorial de $a es : $result');
    }
  }

  void sumatoria(a) {
    result = 0;
    for (int i = 0; i < a.length; i++) {
      result = result + a[i];
    }
    ;
    print('La sumatoria de los valores en la lista $a es: $result');
  }

  void producto(a) {
    result = 1;
    for (int i = 0; i < a.length; i++) {
      result = result * a[i];
    }
    ;
    print('El producto de los valores en la lista $a es: $result');
  }

  switch (operations) {
    case Operation.Sum:
      suma(valor_1, valor_2);
      break;
    case Operation.Rest:
      resta(valor_1, valor_2);
      break;
    case Operation.Division:
      division(valor_1, valor_2);
      break;
    case Operation.Multiply:
      multiplicacion(valor_1, valor_2);
      break;
    case Operation.Module:
      modulo(valor_1, valor_2);
      break;
    case Operation.Factorial:
      factorial(valor_1);
      break;
    case Operation.Sumatory:
      sumatoria(values);
      break;
    case Operation.Product:
      producto(values);
      break;
    default:
      break;
  }
}

enum Operation {
  Sum,
  Rest,
  Multiply,
  Division,
  Module,
  Factorial,
  Sumatory,
  Product
}
