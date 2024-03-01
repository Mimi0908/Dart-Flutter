import 'dart:io';

void main() {
  dynamic vf, th;
  print("Hora de entrada: ");
  double hi = double.parse(stdin.readLineSync().toString());
  print("Hora de salida: ");
  double hs = double.parse(stdin.readLineSync().toString());
  if (hs <= 24 && hi <= 24) {
    if (hs <= hi) {
      th = (24 - hi) + hs;
      vf = ((th - 1) * 600) + 1000;
      print("vfor a pagar "+ vf.toString());
    } else {
      th = hs - hi;
      vf = ((th - 1) * 600) + 1000;
      print("valor a pagar "+ vf.toString());
    }
  } else {
    print("incorrecto");
  }
}
