import 'dart:io';

void main(){
  print("Digite numero 1: ");
  int n1= int.parse(stdin.readLineSync().toString());
  print("Digite numero 2 distinto al primero: ");
  int n2= int.parse(stdin.readLineSync().toString());
  print("Digite numero 3 distinto a los anteriores: ");
  int n3= int.parse(stdin.readLineSync().toString());
  if(n1>n2 && n2>n3){
    print("$n3-$n2-$n1");
  }else
  if(n2>n3 && n3>n1){
    print("$n1-$n3-$n2");
  }else
  if(n3>n2 && n2>n1){
    print("$n1-$n2-$n3");
  }else
  if(n2>n1 && n1>n3){
    print("$n3-$n1-$n2");
  }else
  if(n1>n3 && n3>n2){
    print("$n2-$n3-$n1");
  }else{
    print("$n2-$n1-$n3");
  }
}