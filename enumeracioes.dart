void main() {
  Times tiempo = Times.Sun;

  switch (tiempo) {
    case Times.Clean:
      print('El tiempo esta despejado');
      break;
    case Times.Rain:
      print('El tiempo esta Lluvioso');
      break;
    case Times.Sun:
      print('El tiempo esta Soleado');
      break;
  }
}

//Enum va fuera del main por que es como una clase nueva
enum Times { Sun, Rain, Clean }
