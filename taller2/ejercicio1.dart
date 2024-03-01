import 'dart:io';

void main(){
  double t;
  print('Digitas las millas marinas a convertir: ');
  double mm= double.parse(stdin.readLineSync().toString());
  t=mm*1852;
  print('Las millas marinas convertidas a metros es: '+t.toString());
}