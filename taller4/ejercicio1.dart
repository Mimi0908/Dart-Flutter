import 'dart:io';

void main(){
  dynamic t;
  print("Numero de empleados: ");
  int ne=int.parse(stdin.readLineSync().toString());
  print("Numero de horas trabajadas: ");
  int ht=int.parse(stdin.readLineSync().toString());
  print("Valor por horas: ");
  int vh=int.parse(stdin.readLineSync().toString());
  if(ne>50){
   t=(ht*vh)+(((ht*vh)*20)/100);
   print("el salario de cada empleado es "+ t.toString());
 }
 else{
   t=ht*vh;
   print("el salario de cada empleado es "+ t.toString());
 }
}