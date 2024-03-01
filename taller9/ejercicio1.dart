import 'dart:io';

void main() {
  int t;
  print("numero uno: ");
  int num1 = int.parse(stdin.readLineSync().toString());
  print("numero dos: ");
  int num2 = int.parse(stdin.readLineSync().toString());
  if (num1 < num2) {
    while (num1 < num2) {
      t = num1 % 2;
      if (t == 0) {
        print(num1);
      }
      num1 = num1 + 1;
    }
  } else {
    while (num2 < num1) {
      t = num2 % 2;
      if (t == 0) {
        print(num2);
      }
      num2 = num2 + 1;
    }
  }
}
