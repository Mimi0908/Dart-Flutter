import 'dart:io';

void main(){
  double total;
  print("Cantidad de horas trabajadas: ");
  double horas = double.parse(stdin.readLineSync().toString());
  print('Valor por hora: ');
  double valor= double.parse(stdin.readLineSync().toString());
  total= valor*horas;
  print('Salario total: '+total.toString());
}