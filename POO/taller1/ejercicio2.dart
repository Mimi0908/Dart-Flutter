import 'dart:io';

void main(){
  var cafetera= new Cafetera(0, 1000); int op=0;
  do {
    print("Escoja una opcion: ");
    print("1. servir");
    print("2. vaciar");
    print("3. agregar cafe");
    print("4. salir");
    op = int.parse(stdin.readLineSync().toString());
    switch(op){
      case 1:
        print("cantidad a servir: ");
        int cantidad= int.parse(stdin.readLineSync().toString());
        cafetera.servirCafe(cantidad);
      break;
      case 2:
        cafetera.vaciar();
      break;
      case 3:
      print("cantidad a agregar: ");
        int cafe= int.parse(stdin.readLineSync().toString());
        cafetera.agregarCafe(cafe);
      break;
      case 4:
        print("Cerrando");
      break;
      default:
      
    }
  } while (op!=4);
}

class Cafetera{
  int capacidadMaxima;
  int cantidadActual;
  Cafetera(this.cantidadActual, this.capacidadMaxima){
    this.cantidadActual=cantidadActual;
    this.capacidadMaxima=capacidadMaxima;
  }

  void servirCafe(int cantidad){
    if(cantidad>cantidadActual){
      print("taza con $cantidadActual de cafe. Ya no hay mas cafe");
    }else{
      cantidadActual= cantidadActual-cantidad;
      print("taza con $cantidad de cafe");
    }
  }
  void vaciar(){
    print("cantidad actual de cafe: $cantidadActual");
    cantidadActual=0;
    print("cafetera vaciada");
  }
  void agregarCafe(int cafe){
    if(cafe<capacidadMaxima){
      cantidadActual=cantidadActual+cafe;
      print("agregado con exito");
    }else{
      print("supera la capacidad maxima");
    }
  }
}