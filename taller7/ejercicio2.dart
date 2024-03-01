import 'dart:io';

void main() {
  print("digite su nombre");
  String name = stdin.readLineSync().toString();
  print("genero 1(femenino) o 2(masculino)");
  int gen = int.parse(stdin.readLineSync().toString());
  String nMinuscula = name.toLowerCase();
  String l1 = nMinuscula.substring(0, 1);
  if ((gen == 1 && l1.compareTo('m')<0)|| (gen==2 && l1.compareTo('m')>0)) {
      print("grupo A\n");
    } else {
      print("grupo B\n");
    }
}
