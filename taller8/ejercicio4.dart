import 'dart:io';

void main() {
  dynamic t;
  print("Servicio de nineras (1)basico , (2)Premium , (3)Gold ");
  int s = int.parse(stdin.readLineSync().toString());
  print("horas");
  int h = int.parse(stdin.readLineSync().toString());
  print("nombre de ninera");
  String n = stdin.readLineSync().toString();
  if (s == 1) {
    if (h > 10) {
      t = (((h - 10) * 25000) + (10 * 20000));
      print("Ninera " + n);
      print("servicio Basico, horas: " + h.toString());
      print("horas, tiene que pagar " + t.toString());
    } else {
      t = h * 20000;
      print("Ninera " + n);
      print("servicio Basico, horas: " + h.toString());
      print("horas, tiene que pagar " + t.toString());
    }
  } else {
    if (s == 2) {
      if (h > 15) {
        t = (((h - 15) * 40000) + (15 * 30000));
        print("Ninera " + n);
        print("servicio premium, horas: " + h.toString());
        print("horas, tiene que pagar " + t.toString());
      } else {
        t = h * 30000;
        print("Ninera " + n);
        print("servicio premium, horas: " + h.toString());
        print("horas, tiene que pagar " + t.toString());
      }
    } else {
      if (s == 3) {
        if (h > 20) {
          t = (((h - 20) * 60000) + (20 * 50000));
          print("Ninera " + n);
          print("servicio gold, horas: " + h.toString());
          print("horas, tiene que pagar " + t.toString());
        } else {
          t = h * 50000;
          print("Ninera " + n);
          print("servicio gold, horas: " + h.toString());
          print("horas, tiene que pagar " + t.toString());
        }
      }
    }
  }
}
