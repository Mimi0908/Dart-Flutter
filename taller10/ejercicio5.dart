import 'dart:io';

void main() {
  int sum = 0, sum1 = 0;
  int uno = 0, dos = 0;
  print("lista 1");
  while (uno <= 15) {
    print("escribe un valor ");
    int v = int.parse(stdin.readLineSync().toString());
    sum = sum + v;
    uno = uno + 1;
  }
  print("lista 2");
  while (dos <= 15) {
    print("escribe un valor ");
    int v2 = int.parse(stdin.readLineSync().toString());
    sum1 = sum1 + v2;
    dos = dos + 1;
  }
  if (sum > sum1) {
    print("lista 1 mayor");
  } else {
    if (sum1 > sum) {
      print("lista 2 mayor");
    } else {
      print("listas iguales");
    }
  }
}
