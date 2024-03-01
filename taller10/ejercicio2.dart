import 'dart:io';

void main() {
  int sum = 0, sum1 = 0, nota = 1;
  print("cuantas notas va a ingresar");
  int n = int.parse(stdin.readLineSync().toString());
  while (nota <= n) {
    print("nota alumno");
    int nt = int.parse(stdin.readLineSync().toString());
    if (nt >= 7) {
      sum = sum + 1;
      nota = nota + 1;
    } else {
      sum1 = sum1 + 1;
      nota = nota + 1;
    }
  }
  print("alumnos con notas mayores o iguales a 7: " + sum.toString());
  print("alumnos con notas menores a 7: " + sum1.toString());
}
