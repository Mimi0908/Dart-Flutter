import 'dart:io';

void main(){
  print("digite el inicio del recorrido");
  int n= int.parse(stdin.readLineSync().toString());
  print("digite el fin del recorrido");
  int m=int.parse(stdin.readLineSync().toString());
  for(int i=n;i<=m;i++){
    String mensaje= cuadrado(i);
    print(mensaje);
  }
}
String cuadrado(int valor){
  int total;
  total=valor*valor*valor;
  return 'cubo de $valor es $total';
}