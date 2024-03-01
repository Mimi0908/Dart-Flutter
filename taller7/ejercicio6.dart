import 'dart:io';

void main() {
  print("(1)Candidato A ,(2)Candidato B , (3)Candidato C ");
  int c = int.parse(stdin.readLineSync().toString());
  if (c == 1) {
    print("usted ha votado por rojo");
  } else {
    if (c == 2) {
      print("usted ha votado por verde ");
    } else {
      if (c == 3) {
        print("usted ha votado por azul");
      } else {
        print("opcion erronea");
      }
    }
  }
}
