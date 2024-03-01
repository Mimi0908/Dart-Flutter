import 'dart:io';

void main(){
  dynamic ganancia;
  print("Cantidad de personas que ingresaron: ");
  int personas = int.parse(stdin.readLineSync().toString());
  print("Valor del pasaje: ");
  int valor =int.parse(stdin.readLineSync().toString());
  ganancia=personas*valor;
  print('La ganancia es de: '+ganancia.toString());
}