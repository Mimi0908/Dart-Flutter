import 'dart:io';
void main(){
  List<String> materias=["Matematicas","Fisica", "Quimica", "Historia","Lengua" ];
  List <String> materiasAprob=[];
  for(var y in materias){
      print("Nota de la materia $y");
      int not= int.parse(stdin.readLineSync().toString());
      if(not>=3){
        materiasAprob.add(y);
      }
    }
  materiasAprob.forEach((element) {materias.remove(element);});
  for (var x in materias){
    print("debe repetir $x");
  }
}