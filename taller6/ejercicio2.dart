import 'dart:io';

void main(){
  double total;
  print("Mes: ");
  int mes= int.parse(stdin.readLineSync().toString());
  print("Valor a pagar: ");
  double cap= double.parse(stdin.readLineSync().toString());
  if(mes==1 || mes==2 || mes==3){
    total=cap-((cap*15)/100);
    print("valor total a pagar: $total");
  }else if(mes==4 || mes==5 || mes==6){
    total=cap-((cap*20)/100);
    print("valor total a pagar: $total");
  }else{
    print("valor total a pagar: $cap");
  }
}