import 'dart:io';

void main(){
  Map<String, String> persona={};
  print("Digite su nombre");
  String name=stdin.readLineSync().toString();
  persona.addAll({"Nombre":name});
  print("Digite su edad");
  String age=stdin.readLineSync().toString();
  persona.addAll({"Edad":age});
  print("Digite su direccion");
  String address=stdin.readLineSync().toString();
  persona.addAll({"Direccion":address});
  print("Digite su telefono");
  String tel=stdin.readLineSync().toString();
  persona.addAll({"Telefono":tel});
  print("${persona['Nombre']} tiene ${persona['Edad']} años, vive en ${persona['Direccion']} y su numero de telefono es ${persona['Telefono']}");
}