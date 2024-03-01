import 'dart:io';

void main(){
  List<String> materias=["Matematicas","Fisica", "Quimica", "Historia","Lengua" ];
  List<int> notas=[];
  int cont=0;
  for(var y in materias){
      print("Nota de la materia $y");
      notas.add( int.parse(stdin.readLineSync().toString()));
    }
  for (var x in materias){
    print("En $x has sacado: ${notas[cont]}");
    cont++;
  }
}