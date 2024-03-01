// void main(){
//   int vueltas=1;
//   while(vueltas<=5){
//     print("vuelta $vueltas");
//     vueltas++;
//   }
// }

// void main(){
//   int cuentaReg =5;
//   do{
//     print("Tiempo Restante: $cuentaReg");
//     cuentaReg--;
//   }while(cuentaReg!=0);
// }

// void main(){
//   for(int i=0; i<10;i++){
//     print('Numero ${i+1}');
//   }
// }

// void main(){
//   // var lista={'uno', 'dos', 'tres'};
//   // print(lista);
//   // for(String x in lista){
//   //   print(x);
//   // }
//   List<int> numeros=[1,2,3];
//   for(int x in numeros){
//     print(x);
//   }
// }

// void main(){
//   List<int> numeros=[1,2,3,4,5,6];
//   // numeros.forEach((x) {
//   //   print("Accediendo al elemento $x");
//   // });
//   numeros.forEach((x) =>print("Accediendo al elemento $x")
//   );
// }

// void main(){
//   // Map<String, double> mapa={
//   //   'base':1.84, 'altura':1.95, 'area': 2.10, 'volumen':1.90
//   // };
//   Map<int,String> mapa={1:'pedro', 2:'pablo', 3:'luis', 4:'brayan'};
//   print(mapa);
//   mapa.values.forEach((valor) =>print("Valor del mapa: $valor"));
//   mapa.keys.forEach((llave) =>print("La llave : $llave"));
//   mapa.forEach((llave,valor) =>print("La llave : $llave; tiene el Valor : $valor"));
// }

import 'dart:io';

void main(){
  // Set conjunto;
  // conjunto= Set.from(['Angel', 'Luis', 'Ana', 'Maria']);
  // conjunto.forEach((element) => print('El elemento del conjunto: $element'));
  print('Ingrese su sabor preferiso?');
  String sabor=stdin.readLineSync().toString();
  switch(sabor){
    case "vainilla":
    print("su helado sera de vainilla");
    break;
    case "chocolate":
    print("su helado sera de chocolate");
    break;
    case "naranja":
    print("su helado sera de naranja");
    break;
    default:
    print("No tenemos su sabor favorito");
    break;
  }
}
