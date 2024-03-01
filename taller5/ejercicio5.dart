import 'dart:io';

void main(){
  int suma=0;

  print("Digite un numero");
  int num1=int.parse(stdin.readLineSync().toString());
  print("Digite un numero");
  int num2=int.parse(stdin.readLineSync().toString());
  for(int i=num1; i<=num2; i++){
    suma+=i;
  }
  print("suma final $suma");
}