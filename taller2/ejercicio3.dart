import 'dart:io';

void main(){
  double suma, rest, mult, divi;
  print("OPERACIONES");
  print('Ingrese el primer numero');
  double n1=double.parse(stdin.readLineSync().toString());
  print('Ingrese el segundo numero');
  double n2=double.parse(stdin.readLineSync().toString());
  suma=n1+n2;
  rest=n1-n2;
  mult=n1*n2;
  divi=n1/n2;
  print('Suma: '+suma.toString());
  print('Resta: '+rest.toString());
  print('Multiplicacion: '+mult.toString());
  print('Dividir: '+divi.toString());
}