import 'dart:io';

void main() {
  print("lado 1: ");
  double l1 = double.parse(stdin.readLineSync().toString());
  print("lado 2: ");
  double l2 = double.parse(stdin.readLineSync().toString());
  print("lado 3: ");
  double l3 = double.parse(stdin.readLineSync().toString());
  if (l1 == l2 && l2 == l3) {
    print("triangulo equilatero");
  } else {
    if (l1 == l2 || l1 == l3 || l2 == l3) {
      print("triangulo isoceles");
    } else {
      print("triangulo escaleno");
    }
  }
}
