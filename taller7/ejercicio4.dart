import 'dart:io';

void main() {
  print("digite su edad");
  int a = int.parse(stdin.readLineSync().toString());
  if (a < 4) {
    print("gratis");
  } else {
    if (a > 4 && a < 18) {
      print("valor= 5000");
    } else {
      print("10000");
    }
  }
}
