import 'dart:io';

void main() {
  int b;
  print("digite su puntaje ");
  int c = int.parse(stdin.readLineSync().toString());
  if (c >= 60) {
    b = 200000 * c;
    print("sobresaliente, su salario es de $b");
  } else {
    if (c >= 40) {
      b = 200000 * c;
      print("aceptable, su salario es de $b");
    } else {
      if (c >= 20) {
        b = 200000 * c;
        print("regular, su salario es de $b");
      } else {
        if(c==0){
          print("inaceptable, hay que mejorar rendimiento, tu salario es de 200000");
        }else{
          b = 200000 * c;
          print("inaceptable, hay que mejorar rendimiento, tu salario es de $b");
        }
      }
    }
  }
}
