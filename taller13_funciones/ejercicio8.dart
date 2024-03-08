import 'dart:io';
import 'dart:math';

void main(){
  print("Digite su opcion");
  print("1. suma\n2. resta\n3. multiplicacion\n4. division\n5. potencia\n6. raiz");
  int op= int.parse(stdin.readLineSync().toString());
  switch(op){
    case 1:
      String mensaje=suma();
      print(mensaje);
    break;
    case 2:
      String mensaje=resta();
      print(mensaje);
    break;
    case 3:
      String mensaje=multiplicacion();
      print(mensaje);
    break;
    case 4:
      String mensaje=division();
      print(mensaje);
    break;
    case 5:
      String mensaje=potencia();
      print(mensaje);
    break;
    case 6:
      String mensaje=raiz();
      print(mensaje);
    break;
    default:
    print("La opcion no esta en la lista");
    break;
  }
}

String suma(){
  print("Digite el primer numero");
  int n1=int.parse(stdin.readLineSync().toString());
  print("digite el segundo numero");
  int n2=int.parse(stdin.readLineSync().toString());
  int sum=n1+n2;
  return 'Suma de $n1 y $n2 es de $sum';
}

String resta(){
  print("Digite el primer numero");
  int n1=int.parse(stdin.readLineSync().toString());
  print("digite el segundo numero");
  int n2=int.parse(stdin.readLineSync().toString());
  int rest=n1-n2;
  return 'Resta de $n1 y $n2 es de $rest';
}

String multiplicacion(){
  print("Digite el primer numero");
  int n1=int.parse(stdin.readLineSync().toString());
  print("digite el segundo numero");
  int n2=int.parse(stdin.readLineSync().toString());
  int mult=n1*n2;
  return 'multiplicacion de $n1 y $n2 es de $mult';
}
String division(){
  print("Digite el primer numero");
  double n1=double.parse(stdin.readLineSync().toString());
  print("digite el segundo numero");
  double n2=double.parse(stdin.readLineSync().toString());
  double div=n1/n2;
  return 'Division de $n1 y $n2 es de $div';
}
String potencia() {
  print("Digite el número base");
  num n1 = num.parse(stdin.readLineSync()!);
  print("Digite el exponente");
  num n2 = num.parse(stdin.readLineSync()!);
  num poten = pow(n1, n2);
  return 'La potencia de $n1 elevado a la $n2 es $poten';
}

String raiz() {
  print("Digite el número");
  num n1 = num.parse(stdin.readLineSync()!);
  num r = sqrt(n1);
  return 'La Raiz de $n1 es $r';
}