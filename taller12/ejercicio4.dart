import 'dart:io';

void main(){
  Map <String, String> meses={"01":"Enero", "02":"Febrero", "03":"Marzo", "04":"Abril", "05":"Mayo", "06":"Junio", "07":"Julio", "08":"Agosto", "09":"Septiembre", "10":"Octubre", "11":"Noviembre", "12":"Diciembre"};
  print("Digite la fecha en formato dd/mm/aaaa");
  String fecha=stdin.readLineSync().toString();
  String mes= fecha[3]+fecha[4];
  meses.forEach((key, value) {if(key==mes){
    mes=value;
  }});
  print("${fecha[0]+fecha[1]} de $mes de ${fecha[6]+fecha[7]+fecha[8]+fecha[9]}");
}