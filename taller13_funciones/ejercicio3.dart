import 'dart:io';

void main(){
  print("digite el primer valor");
  dynamic valor1=stdin.readLineSync().toString();
  print("digite el segundo valor");
  dynamic valor2=stdin.readLineSync().toString();
  print("intercambio de valores");
  String mensaje=intercambio(valor1, valor2);
  print(mensaje);
}
String intercambio(valor1, valor2){
  dynamic c;
  c=valor1;
  valor1=valor2;
  valor2=c;
  return 'ahora el primer valor vale $valor1 y el segundo valor vale $valor2';
}