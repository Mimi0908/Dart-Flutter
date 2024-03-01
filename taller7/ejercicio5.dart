import 'dart:io';

void main() {
  int v;
  print("Elige (1)Pizza vegetariana, (2)Pizza normal ");
  int op = int.parse(stdin.readLineSync().toString());
  print("Agrega adicionales? (1)si o (2)no");
  int ad = int.parse(stdin.readLineSync().toString());
  if (op == 1 && ad == 1) {
    print("Ingredientes: (1)Pimiento, (2)Tofu, (3)Champinones ");
    int ing = int.parse(stdin.readLineSync().toString());
    if (ing == 1) {
      v = 10000 + 1000;
      print("Pagar $v");
    } else {
      if (ing == 2) {
        v = 2000 + 10000;
        print("Pagar $v");
      } else {
        v = 3000 + 10000;
        print("Pagar $v");
      }
    }
  } else {
    if (op == 2 && ad == 1) {
      print("Ingredientes: (1)Pepperoni, (2)jamon, (3)salmon ");
      int ing = int.parse(stdin.readLineSync().toString());
      if (ing == 1) {
        v = 15000 + 2000;
        print("Pagar $v");
      } else {
        if (ing == 2) {
          v = 15000 + 3000;
          print("Pagar $v");
        } else {
          v = 15000 + 5000;
          print("Pagar $v");
        }
      }
    } else {
      if (op == 1 && ad == 2) {
        print("pagar 10000");
      } else {
        print("pagar 15000");
      }
    }
  }
}
