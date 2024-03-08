import 'dart:io';

void main(){
  print("Ingrese la cantidad de numeros");
  int cant= int.parse(stdin.readLineSync().toString());
  int resultado=sumaImpares(cant);
  print("Valor de los $cant primeros numeros enteros impares es $resultado");
}
int sumaImpares(int cant){
  int cont=0;
  int sum=0;
  for(int i = 1; cont < cant; i += 2){
    sum += i;
    cont++;
  }
  return sum;
}
