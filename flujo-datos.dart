void main() {
  /// Operaciones Aritméticas ///
  void opAritmetics() {
    /// Operadores:
    ///   +, -, *, /, ~/  y %
    int valor1 = 10;
    int valor2 = 12;
    int result = valor1 + valor2;
    print('La suma de ${valor1} + ${valor2} = ${result}');
  }

  /// Operaciones de Asignación ///
  void opAsignacion() {
    /// Operadores:
    ///   +=, -=, *=, /=, ~/=  y =%
    int valor1 = 12;
    int valor2 = 14;

    // Esto es como escribir valor1 = valor1 + valor2
    print(valor1 += valor2);
  }

  /// Operaciones Relacionales ///
  void opRelacionales() {
    /// Operadores:
    ///   ==, !=, =>, >, <, >= y <=
    int valor1 = 12;
    int valor2 = 14;
    bool result = valor1 == valor2;
    // Esto me imprime un false ya que los 2 valores comparados no son iguales
    // Si usara el operador != entonces me imprimiria true
    print(result);
  }

  /// Operaciones Lógicas ///
  void opLogicas() {
    /// Operadores:
    ///   ||, &&, ! y ?:
    bool rain = false;
    bool cool = true;
    bool result = rain || cool;

    print(result);
  }

  opAritmetics();
  opAsignacion();
  opRelacionales();
  opLogicas();
}
