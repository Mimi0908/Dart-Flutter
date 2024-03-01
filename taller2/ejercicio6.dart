import 'dart:io';
import 'dart:math';

void main(){
  double oper, hip;
  print('Valor cateto1: ');
  double cat1 = double.parse(stdin.readLineSync().toString());
  print('valor cateto2: ');
  double cat2 = double.parse(stdin.readLineSync().toString());
  oper=(cat1*cat1)+(cat2*cat2);
  hip=sqrt(oper);
  print("La hipotenusa del triangulo es: "+hip.toString());
}