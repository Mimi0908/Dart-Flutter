import 'dart:io';

void main(){
  double dup;
  int meses=0;
  double operacion=0;
  print("digita la capital que desea invertir");
  double cap= double.parse(stdin.readLineSync().toString());
  dup=cap*2;
  while(cap<=dup){
    operacion=((cap*5)/100);
    cap+=operacion;
    meses++;
  }
  print("en $meses meses, obtendra el doble de su capital: $operacion");
}