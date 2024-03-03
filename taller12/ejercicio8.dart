import 'dart:io';
void main(){
  Map<String,String> diccionario={};
  int op=1;
  bool existencia=false;
  do{
    print(" 1. agregar datos\n 0. salir");
    op= int.parse(stdin.readLineSync().toString());
    if(op!=0){
      print("Digite la palabra en español: ");
      String spanish=stdin.readLineSync().toString().toLowerCase();
      print("Digite la traducción al ingles");
      String english=stdin.readLineSync().toString();
      diccionario.addAll({spanish:english});
    }
  }while(op==1);

  print("Digite una frase en español: ");
  String frase=stdin.readLineSync().toString().toLowerCase();
  List<String> palabras = frase.split(" ");

  List<String> traducciones=[];

  for(int i=0; i<palabras.length;i++){
      diccionario.forEach((key, value) { if(palabras[i]==key){
        existencia=true;
      }});
      if(existencia==true){
        diccionario.forEach((key, value) {if(palabras[i]==key){
          traducciones.add(value);
        }});
      }else{
        break;
      }
    }
  if(existencia==true){
    print(traducciones.join(" "));
  }else{
    print("No estan todas las palabras neccesarias para traducir");
  }
}