import 'dart:io';

void main() {
  int sum = 0, sum1 = 0, su = 0, em = 1;
  print("ingresar cuantos empleados hay ");
  int n = int.parse(stdin.readLineSync().toString());
  while (em <= n) {
    print("sueldo del empleado ");
    int s = int.parse(stdin.readLineSync().toString());
    su = su + s;
    if (s >= 100 && s <= 300) {
      sum = sum + 1;
      em = em + 1;
    } else {
      if (s > 300) {
        sum1 = sum1 + 1;
        em = em + 1;
      }
    }
  }
  print("empleados que cobran entre los 100 y 300 " + sum.toString());
  print("empleados que cobran mas de 300 " + sum1.toString());
  print("importe que gasta la empresa en los sueldos al personal " +
      su.toString());
}
