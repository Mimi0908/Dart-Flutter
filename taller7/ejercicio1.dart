import 'dart:io';

void main() {
  double t;
  print("digite su edad");
  int a = int.parse(stdin.readLineSync().toString());
  print("salario minimo");
  double sm = double.parse(stdin.readLineSync().toString());
  print("cuanto recibe");
  double d = double.parse(stdin.readLineSync().toString());
  if (d > (sm * 2) && a > 30) {
    t = (((d * 12) * 20) / 100);
    print("tiene que pagar: $t");
  } else {
    if (d > sm && a > 50) {
      t = (((d * 12) * 10) / 100);
      print("tiene que pagar: $t");
    } else {
      print("no pagas renta ");
    }
  }
}
