import 'dart:io';

void main() {
  dynamic t;
  int r = 0;
  print("cantidad de docenas\n");
  int d = int.parse(stdin.readLineSync().toString());
  print("valor de docena\n");
  double v = double.parse(stdin.readLineSync().toString());
  if (d > 3) {
    t = (d * v) - (((d * v) * 15) / 100);
    while (d > 3) {
      r = r + 1;
      d = d - 3;
    }
    print("regalos $r");
    print("valor a pagar $t");
  } else {
    t = (d * v) - (((d * v) * 10) / 100);
    print("valor a pagar: $t");
  }
}
