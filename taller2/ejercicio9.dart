import 'dart:io';

void main(){
  int  total;
  print("Cantidad de horas de estancia: ");
  int horas=int.parse(stdin.readLineSync().toString());
  if(horas>1){
    total=1000+((horas-1)*800);
  }else{
    total=1000;
  }
  print('Valor total a pagar: '+total.toString());
}