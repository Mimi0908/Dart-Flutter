import 'dart:io';

void main(){
  int total;
  dynamic pM, pH;
  print("Cantidad de mujeres: ");
  int muj= int.parse(stdin.readLineSync().toString());
  print("Cantidad de hombres: ");
  int hom= int.parse(stdin.readLineSync().toString());
  total=muj+hom;
  pM=(muj*100)/total;
  pH=(hom*100)/total;
  if(pM>pH){
    print("Mayor cantidad de mujeres $pM %");
  }else if(pH>pM){
    print("Mayor cantidad de hombres $pH %");
  }else{
    print("Es la misma cantidad");
  }
}