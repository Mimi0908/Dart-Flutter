import 'dart:io';

void main(){
  int suma=0;

  print("Digite un numero");
  int num=int.parse(stdin.readLineSync().toString());
  for(int i=1; i<=num; i++){
    suma+=i;
  }
  print("suma final $suma");
}