import 'dart:io';

void main() {
  print("Numero inicial: ");
  int n1 = int.parse(stdin.readLineSync().toString());
  print("Numero final: ");
  int n2 = int.parse(stdin.readLineSync().toString());
  if (n1 < n2) {
    while (n1 <= n2) {
      if (n1 % 2 >= 1) {
        print(n1.toString());
        n1 = n1 + 1;
      } else {
        n1 = n1 + 1;
      }
    }
  } else {
    while (n2 <= n1) {
      if (n2 % 2 >= 1) {
        print(n2.toString());
        n2 = n2 + 1;
      } else {
        n2 = n2 + 1;
      }
    }
  }
}
