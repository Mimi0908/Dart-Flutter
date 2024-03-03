import 'dart:io';
void main(){
  Map<String, double> compras={};
  int op=1;
  double total=0;
  do{
    print(" 1. agregar datos\n 0. salir");
    op= int.parse(stdin.readLineSync().toString());
    if(op!=0){
      print("Digite su articulo");
      String name=stdin.readLineSync().toString();
      print("Digite el precio del articulo");
      double valor=double.parse(stdin.readLineSync().toString());
      compras.addAll({name:valor});
    }else{
      compras.forEach((key,value) {total+=value;
      print(key+": "+value.toString()); });
      print("Total: "+total.toString());
    }
  }while(op==1);
  
}