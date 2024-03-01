import 'dart:io';

void main(){
  dynamic total;
  print("horas trabajadas: ");
  int h= int.parse(stdin.readLineSync().toString());
  print("valor horas: ");
  double v = double.parse(stdin.readLineSync().toString());
  if(h>40){
    total=((((v*50)/100)+v)*(h-40))+(40*v);
    print("Total: $total");
  }else{
    total=h*v;
    print("Total: $total");
  }
}