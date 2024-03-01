import 'dart:io';

void main() {
  Map<String, String> dic = {'Euro': '€', 'Dollar': "\$", 'Yen': '¥'};
  String val = "null";
  print("Escriba el tipo del billete: ");
  String tipo = stdin.readLineSync().toString();
  dic.forEach((x, y) {
    if (x == tipo) {
      val = y;
    }
  });
  if (val != "null") {
    print("Simbolo: $val");
  } else {
    print("No esta en el diccionario");
  }
}
