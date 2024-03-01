import 'dart:io';

void main(){
  List<int> loteria=[];
  print("Numeros ganadores de loteria ");
  for(int i=0; i<7;i++){
    loteria.add(int.parse(stdin.readLineSync().toString()));
  }
  print("----------------------------");
  loteria.sort();
  for(var x in loteria){
    print(x);
  }
}