import 'dart:io';

void main(){
  double total;
  print("Ingrese el precio de compra: ");
  double valor= double.parse(stdin.readLineSync().toString());
  print("Ingrese el valor del descuento: ");
  double desc= double.parse(stdin.readLineSync().toString());
  total=valor-((valor*desc)/100);
  print("El valor total es de "+total.toString());
}