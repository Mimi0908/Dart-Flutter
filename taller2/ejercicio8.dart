import 'dart:io';

void main(){
  dynamic p;
  print("digite el valor por km: ");
  double vkm= double.parse(stdin.readLineSync().toString());
  print("digite el valor por dias: ");
  double vd= double.parse(stdin.readLineSync().toString());
  print("digite la distancia recorrida: ");
  double dr =double.parse(stdin.readLineSync().toString());
  print("digite sus dias de estancia: ");
  int de = int.parse(stdin.readLineSync().toString());
  p=(vd*de)+(vkm*dr);
  print('Su pasaje de avion tiene un valor de: '+p.toString());
}