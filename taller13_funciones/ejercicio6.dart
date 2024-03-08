import 'dart:io';

void main(){
  print("digite un numero");
  int n= int.parse(stdin.readLineSync().toString());
  String mensaje=verificacion(n);
  print(mensaje);
}
String verificacion(int n){
  String posOneg="negativo";
  String parOimp="impar";
  if(n>0){
    posOneg='positivo';
  }
  if(n%2==0){
    parOimp="par";
  }
  return '$n es un numero $posOneg y tambien es $parOimp';
}