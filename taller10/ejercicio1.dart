import 'dart:io';

void main() {
  int sum = 0, p = 1;
  print("ingresar cuantas piezas a procesar");
  int n = int.parse(stdin.readLineSync().toString());
  while (p <= n) {
    print("digite la longitud de cada una de las piezas ");
    print("longitud pieza");
    double l = double.parse(stdin.readLineSync().toString());
    if ((l >= 1.20) && (l <= 1.30)) {
      sum = sum + 1;
      p = p + 1;
    } else {
      p = p + 1;
    }
  }
  print("cantidad de piezas aptas son " + sum.toString());
}
