import 'dart:io';
void main(){
  Map<String, String> persona={};
  int op=1;
  do{
    print("1. agregar datos\n 0. salir");
    op= int.parse(stdin.readLineSync().toString());
    if(op!=0){
      print("digite el tipo de dato a ingresar de usted: ");
      String tipo= stdin.readLineSync().toString();
      print("Digite su $tipo");
      String name=stdin.readLineSync().toString();
      persona.addAll({tipo:name});
      persona.forEach((key, value) {print(key+": "+value);});
    }else{
      print("Cerrando Programa");
    }
  }while(op==1);
  
}