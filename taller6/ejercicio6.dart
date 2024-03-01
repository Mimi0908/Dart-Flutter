import 'dart:io';

void main(){
  int intentos=0;
  String usuario= "usu1";
  int contrasena=1234;
  do{
    print("Usuario: ");
    String usu= stdin.readLineSync().toString();
    print("Contraseña: ");
    int cont=int.parse(stdin.readLineSync().toString());
    if(usu==usuario && contrasena==cont){
      print("BIENVENIDO");
      intentos=2;
    }else{
      intentos++;
    }
  }while(intentos<2);
  
}