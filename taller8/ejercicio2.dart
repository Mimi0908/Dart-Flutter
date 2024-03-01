import 'dart:io';

void main() {
  dynamic t;
  print("ingresar kilometros");
  double km = double.parse(stdin.readLineSync().toString());
  if (km < 300) {
    t = (((300000) * 20) / 100) + 300000;
    print("tiene que pagar: $t");
  } else {
    if (km > 300 && km < 1000) {
      t = (((km - 300) * 15000) + 300000) +
          ((((km - 300) * 15000) + 300000) * 20 / 100);
      print("tiene que pagar: $t");
    } else {
      t = (((km - 1000) * 10000) + 300000) +
          ((((km - 1000) * 10000) + 300000) * 20 / 100);
      print("tiene que pagar: $t");
    }
  }
}
