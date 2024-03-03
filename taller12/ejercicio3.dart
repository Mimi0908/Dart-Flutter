import 'dart:io';

void main(){
  double precio=0;
  Map<String, double> dic={"Platano":1.35, "Manzana":0.80, "Pera":0.85, "Naranja":0.70};
  print("Digite la fruta a comprar");
  String fruta= stdin.readLineSync().toString();
  print("Cuantos kilos piensa llevar?");
  double kilos= double.parse(stdin.readLineSync().toString());
  dic.forEach((key, value) {if(key==fruta){
    precio=value*kilos;
  }});
  if(precio!=0){
    print("El valor de $kilos kilos de la fruta: $fruta es de $precio");
  }
  else{
    print("No esta en el diccionario");
  }

}