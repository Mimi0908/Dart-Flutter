import 'dart:io';

void main(){
  double notaF;
  print("Nota taller 1: ");
  double n1= double.parse(stdin.readLineSync().toString());
  print("Nota taller 2: ");
  double n2= double.parse(stdin.readLineSync().toString());
  print("Nota examen final: ");
  double exa= double.parse(stdin.readLineSync().toString());
  notaF=((n1*30)/100)+((n2*30)/100)+((exa*40)/100);
  print("Nota final: $notaF");
}