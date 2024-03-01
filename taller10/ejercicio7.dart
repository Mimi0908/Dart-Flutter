import 'dart:io';

void main() {
  int x = 1, sum = 0;
  double prom = 0;
  print("digite cuantos numeros quiere colocar");
  int n = int.parse(stdin.readLineSync().toString());
  while (x <= n) {
    print("ingrese numero decimal");
    int dec = int.parse(stdin.readLineSync().toString());
    sum = sum + dec;
    x = x + 1;
  }
  prom = sum / n;
  print("el promedio de " + prom.toString());
}
