// void main(){
//   print("Hola mundo"); 
//   String cadena1= 'primer ';
//   String cadena2= "intento";
//   print("texto: "+cadena1+cadena2);
//   int entero=18;
//   double decimal=2.5;
//   print("entero: "+entero.toString()+" Decimal: "+decimal.toString());
//   bool bandera=true;
//   print(bandera);
//   dynamic name="Dart";
//   name=34;
//   name=false;
//   print(name);
//   var a;
//   a=123;
//   a='que hambre';
//   print(a);
//   var lista=[1,2,3,4];
//   print(lista);
// }

import 'dart:io';

void main(){
  // List numeros=[1,2,3,4,5];
  // print(numeros);
  // numeros.add(6);
  // print(numeros);
  // numeros.add('hola');
  // print(numeros);

  // List<int> numeros=[1,2,3,4,5];
  // print(numeros);

  // numeros[0]=6;
  // print(numeros);

  // Set grupo;
  // grupo =Set.from(['musica', 'programacion', 'logica']);
  // print(grupo);
  // grupo.remove('programacion');
  // print(grupo);

  // Map<String, dynamic> persona={
  //   'nombre':'Carlos',
  //   'edad':32,
  //   'soltero': true
  // };
  // print(persona['nombre']);

  // print("Personal plantilladas para comite");
  // Map<int,String> personas={1:'Edison', 2:'Paula', 9:'Esteban'};
  // personas.addAll({8:'David'});
  // print(personas);

  // print('ingrese su nombre?');
  // String nombre=stdin.readLineSync().toString();

  // print("Helo $nombre! \nBienvenido a ADSO!!");

  // print("SUMANDO 2 NUMEROS");
  // print('ESCRIBA EL PRIMER NUMERO');

  // double numero1 =double.parse(stdin.readLineSync().toString());
  // print('ESCRIBA EL SEGUNDO NUMERO');
  // double numero2= double.parse(stdin.readLineSync().toString());

  // print("La suma de $numero1 mas $numero2 es:");
  // print(numero1+numero2);

  print("escriba un año");
  var year= int.parse(stdin.readLineSync().toString());
  if(year>=2001){
    print('21st century');
  }else if(year>=1901){
    print('20st century');
  }
}