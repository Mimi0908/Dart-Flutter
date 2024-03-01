import 'dart:io';

void main() {
  double sum = 0, prom = 0;
  int a = 1;
  print("ingresar cantidad de personas");
  int n = int.parse(stdin.readLineSync().toString());
  while (a <= n) {
    print("ingresar altura de personas");
    double al = double.parse(stdin.readLineSync().toString());
    sum = sum + al;
    a = a + 1;
  }
  prom = sum / n;
  print("la altura promedio es de: " + prom.toString());
}
